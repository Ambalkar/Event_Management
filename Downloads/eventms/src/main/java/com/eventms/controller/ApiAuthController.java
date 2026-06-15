package com.eventms.controller;

import com.eventms.service.FileNotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/auth")
public class ApiAuthController {

    @Value("${admin.email:admin@eventms.com}")
    private String adminEmail;

    @Value("${admin.password.hash}")
    private String adminPasswordHash;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Autowired
    private DataSource dataSource;

    @Autowired
    private FileNotificationService fileNotificationService;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginRequest request, HttpSession session) {
        String email = normalize(request.getEmail());
        String password = request.getPassword();

        if (email.isEmpty() || password == null || password.isEmpty()) {
            return error(HttpStatus.BAD_REQUEST, "Email and password are required.");
        }

        if (adminEmail.equalsIgnoreCase(email)) {
            if (passwordEncoder.matches(password, adminPasswordHash)) {
                setSessionUser(session, "Admin", adminEmail, "ADMIN");
                return successResponse("Admin", adminEmail, "ADMIN");
            } else {
                return error(HttpStatus.UNAUTHORIZED, "Invalid email or password.");
            }
        }

        try (Connection conn = dataSource.getConnection()) {
            ensureAuthTable(conn);

            PreparedStatement ps = conn.prepareStatement(
                    "SELECT full_name, email, password_hash FROM app_users WHERE lower(email) = lower(?)");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next() && passwordEncoder.matches(password, rs.getString("password_hash"))) {
                String fullName = rs.getString("full_name");
                String userEmail = rs.getString("email");
                setSessionUser(session, fullName, userEmail, "USER");
                return successResponse(fullName, userEmail, "USER");
            }
        } catch (SQLException e) {
            return error(HttpStatus.INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
        }

        return error(HttpStatus.UNAUTHORIZED, "Invalid email or password.");
    }

    @PostMapping("/signup")
    public ResponseEntity<?> signup(@RequestBody SignupRequest request, HttpSession session) {
        String name = request.getName() == null ? "" : request.getName().trim();
        String email = normalize(request.getEmail());
        String password = request.getPassword();

        if (name.isEmpty() || email.isEmpty() || password == null || password.length() < 6) {
            return error(HttpStatus.BAD_REQUEST, "Enter your name, email, and a password with at least 6 characters.");
        }

        if (adminEmail.equalsIgnoreCase(email)) {
            return error(HttpStatus.BAD_REQUEST, "That email is reserved for admin login.");
        }

        try (Connection conn = dataSource.getConnection()) {
            ensureAuthTable(conn);

            PreparedStatement ps = conn.prepareStatement(
                    "INSERT INTO app_users (full_name, email, password_hash) VALUES (?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, passwordEncoder.encode(password));
            ps.executeUpdate();

            try {
                fileNotificationService.saveRegisteredUser(name, email);
            } catch (IOException e) {
                // Non-blocking notification service error
            }
            setSessionUser(session, name, email, "USER");
            return successResponse(name, email, "USER");
        } catch (SQLException e) {
            return error(HttpStatus.CONFLICT, "Could not create account. The email may already be registered.");
        }
    }

    @PostMapping("/logout")
    public ResponseEntity<?> logout(HttpSession session) {
        if (session != null) {
            session.invalidate();
        }
        Map<String, Object> res = new HashMap<>();
        res.put("success", true);
        res.put("message", "Logged out successfully.");
        return ResponseEntity.ok(res);
    }

    @GetMapping("/me")
    public ResponseEntity<?> me(HttpSession session) {
        Map<String, Object> res = new HashMap<>();
        if (session != null && session.getAttribute("authEmail") != null) {
            res.put("authenticated", true);
            res.put("name", session.getAttribute("authName"));
            res.put("email", session.getAttribute("authEmail"));
            res.put("role", session.getAttribute("authRole"));
        } else {
            res.put("authenticated", false);
        }
        return ResponseEntity.ok(res);
    }

    private void setSessionUser(HttpSession session, String name, String email, String role) {
        session.setAttribute("authName", name);
        session.setAttribute("authEmail", email);
        session.setAttribute("authRole", role);
    }

    private ResponseEntity<?> successResponse(String name, String email, String role) {
        Map<String, Object> res = new HashMap<>();
        res.put("success", true);
        res.put("name", name);
        res.put("email", email);
        res.put("role", role);
        return ResponseEntity.ok(res);
    }

    private ResponseEntity<?> error(HttpStatus status, String message) {
        Map<String, Object> res = new HashMap<>();
        res.put("success", false);
        res.put("message", message);
        return ResponseEntity.status(status).body(res);
    }

    private String normalize(String value) {
        return value == null ? "" : value.trim().toLowerCase();
    }

    private void ensureAuthTable(Connection conn) throws SQLException {
        try (PreparedStatement ps = conn.prepareStatement(
                "CREATE TABLE IF NOT EXISTS app_users ("
                        + "user_id SERIAL PRIMARY KEY, "
                        + "full_name VARCHAR(255) NOT NULL, "
                        + "email VARCHAR(255) NOT NULL UNIQUE, "
                        + "password_hash VARCHAR(255) NOT NULL, "
                        + "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP"
                        + ")")) {
            ps.executeUpdate();
        }
    }

    public static class LoginRequest {
        private String email;
        private String password;
        public String getEmail() { return email; }
        public void setEmail(String email) { this.email = email; }
        public String getPassword() { return password; }
        public void setPassword(String password) { this.password = password; }
    }

    public static class SignupRequest {
        private String name;
        private String email;
        private String password;
        public String getName() { return name; }
        public void setName(String name) { this.name = name; }
        public String getEmail() { return email; }
        public void setEmail(String email) { this.email = email; }
        public String getPassword() { return password; }
        public void setPassword(String password) { this.password = password; }
    }
}
