package com.eventms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
public class AuthController {

    private static final String ADMIN_EMAIL = "admin@devevent.gmail.com";
    private static final String ADMIN_PASSWORD = "Koo4mTjBtfT1W2EQ";

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Autowired
    private DataSource dataSource;

    @GetMapping({"/login", "/signin"})
    public String loginPage(@RequestParam(value = "mode", required = false) String mode,
            @RequestParam(value = "target", required = false) String target,
            Model model) {
        model.addAttribute("mode", "signup".equalsIgnoreCase(mode) ? "signup" : "login");
        model.addAttribute("target", target == null || target.trim().isEmpty() ? "/" : target);
        return "auth";
    }

    @GetMapping("/signup")
    public String signupPage(@RequestParam(value = "target", required = false) String target, Model model) {
        model.addAttribute("mode", "signup");
        model.addAttribute("target", target == null || target.trim().isEmpty() ? "/" : target);
        return "auth";
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam(value = "target", required = false, defaultValue = "/") String target,
            HttpSession session,
            RedirectAttributes redirectAttributes) {
        String normalizedEmail = normalize(email);

        if (ADMIN_EMAIL.equalsIgnoreCase(normalizedEmail) && ADMIN_PASSWORD.equals(password)) {
            setSessionUser(session, "Admin", ADMIN_EMAIL, "ADMIN");
            return "redirect:/admin";
        }

        try (Connection conn = dataSource.getConnection()) {
            ensureAuthTable(conn);

            PreparedStatement ps = conn.prepareStatement(
                    "SELECT full_name, email, password_hash FROM app_users WHERE lower(email) = lower(?)");
            ps.setString(1, normalizedEmail);
            ResultSet rs = ps.executeQuery();

            if (rs.next() && passwordEncoder.matches(password, rs.getString("password_hash"))) {
                setSessionUser(session, rs.getString("full_name"), rs.getString("email"), "USER");
                return "redirect:" + safeTarget(target);
            }
        } catch (SQLException e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Could not sign in: " + e.getMessage());
            return "redirect:/login";
        }

        redirectAttributes.addFlashAttribute("errorMessage", "Invalid email or password.");
        return "redirect:/login";
    }

    @PostMapping("/signup")
    public String signup(@RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam(value = "target", required = false, defaultValue = "/") String target,
            HttpSession session,
            RedirectAttributes redirectAttributes) {
        String normalizedName = name == null ? "" : name.trim();
        String normalizedEmail = normalize(email);

        if (normalizedName.isEmpty() || normalizedEmail.isEmpty() || password == null || password.length() < 6) {
            redirectAttributes.addFlashAttribute("errorMessage", "Enter your name, email, and a password with at least 6 characters.");
            return "redirect:/signup";
        }

        if (ADMIN_EMAIL.equalsIgnoreCase(normalizedEmail)) {
            redirectAttributes.addFlashAttribute("errorMessage", "That email is reserved for admin login.");
            return "redirect:/signup";
        }

        try (Connection conn = dataSource.getConnection()) {
            ensureAuthTable(conn);

            PreparedStatement ps = conn.prepareStatement(
                    "INSERT INTO app_users (full_name, email, password_hash) VALUES (?, ?, ?)");
            ps.setString(1, normalizedName);
            ps.setString(2, normalizedEmail);
            ps.setString(3, passwordEncoder.encode(password));
            ps.executeUpdate();

            setSessionUser(session, normalizedName, normalizedEmail, "USER");
            return "redirect:" + safeTarget(target);
        } catch (SQLException e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Could not create account. The email may already be registered.");
            return "redirect:/signup";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session, RedirectAttributes redirectAttributes) {
        session.invalidate();
        redirectAttributes.addFlashAttribute("successMessage", "You have been logged out.");
        return "redirect:/";
    }

    private void setSessionUser(HttpSession session, String name, String email, String role) {
        session.setAttribute("authName", name);
        session.setAttribute("authEmail", email);
        session.setAttribute("authRole", role);
    }

    private String normalize(String value) {
        return value == null ? "" : value.trim().toLowerCase();
    }

    private String safeTarget(String target) {
        if (target == null || target.trim().isEmpty() || !target.startsWith("/") || target.startsWith("//")) {
            return "/";
        }
        return target;
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
}
