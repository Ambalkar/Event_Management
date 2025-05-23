package com.example.eventmanagement.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.eventmanagement.model.Event;
import com.example.eventmanagement.util.DBConnection;

@WebServlet("/user")
public class UserServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(UserServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Event> events = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.getConnection();
            LOGGER.fine("Database connection established");

            String sql = "SELECT * FROM events ORDER BY date";
            stmt = conn.prepareStatement(sql);
            LOGGER.fine(() -> String.format("Executing query: %s", sql));
            rs = stmt.executeQuery();

            while (rs.next()) {
                Event event = new Event();
                event.setId(rs.getInt("event_id"));
                event.setName(rs.getString("name"));
                event.setDate(rs.getString("date"));
                event.setLocation(rs.getString("location"));
                event.setDescription(rs.getString("description"));
                event.setGuestLimit(rs.getInt("guest_limit"));
                event.setCurrentGuests(rs.getInt("current_guests"));
                events.add(event);
                LOGGER.fine(() -> String.format("Found event: %s (ID: %d)", event.getName(), event.getId()));
            }

            request.setAttribute("events", events);
            LOGGER.fine(() -> String.format("Total events found: %d", events.size()));
            request.getRequestDispatcher("/WEB-INF/views/user_events.jsp").forward(request, response);

        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Database error occurred", e);
            throw new ServletException("Database error", e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error closing database resources", e);
            }
        }
    }

    // Handle event booking
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int eventId = Integer.parseInt(request.getParameter("event_id"));
        String userName = request.getParameter("name");
        String userEmail = request.getParameter("email");

        try (Connection conn = DBConnection.getConnection()) {
            // Check guest limit
            String checkSql = "SELECT guest_limit, current_guests FROM events WHERE event_id = ?";
            PreparedStatement checkStmt = conn.prepareStatement(checkSql);
            checkStmt.setInt(1, eventId);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                int guestLimit = rs.getInt("guest_limit");
                int currentGuests = rs.getInt("current_guests");

                if (currentGuests >= guestLimit) {
                    request.setAttribute("errorMessage", "Sorry, the event is fully booked.");
                    doGet(request, response);
                    return;
                }
            } else {
                request.setAttribute("errorMessage", "Event not found.");
                doGet(request, response);
                return;
            }

            // Generate digital ID
            String digitalId = UUID.randomUUID().toString();

            // Insert or update user booking
            String userCheckSql = "SELECT user_id FROM users WHERE email = ?";
            PreparedStatement userCheckStmt = conn.prepareStatement(userCheckSql);
            userCheckStmt.setString(1, userEmail);
            ResultSet userRs = userCheckStmt.executeQuery();

            if (userRs.next()) {
                // Update existing user booking
                int userId = userRs.getInt("user_id");
                String updateSql = "UPDATE users SET name = ?, booked_event_id = ?, digital_id = ? WHERE user_id = ?";
                PreparedStatement updateStmt = conn.prepareStatement(updateSql);
                updateStmt.setString(1, userName);
                updateStmt.setInt(2, eventId);
                updateStmt.setString(3, digitalId);
                updateStmt.setInt(4, userId);
                updateStmt.executeUpdate();
            } else {
                // Insert new user booking
                String insertSql = "INSERT INTO users (name, email, booked_event_id, digital_id) VALUES (?, ?, ?, ?)";
                PreparedStatement insertStmt = conn.prepareStatement(insertSql);
                insertStmt.setString(1, userName);
                insertStmt.setString(2, userEmail);
                insertStmt.setInt(3, eventId);
                insertStmt.setString(4, digitalId);
                insertStmt.executeUpdate();
            }

            // Update current guests count
            String updateGuestsSql = "UPDATE events SET current_guests = current_guests + 1 WHERE event_id = ?";
            PreparedStatement updateGuestsStmt = conn.prepareStatement(updateGuestsSql);
            updateGuestsStmt.setInt(1, eventId);
            updateGuestsStmt.executeUpdate();

            request.setAttribute("successMessage", "Booking successful! Your digital ID: " + digitalId);
            doGet(request, response);

        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}
