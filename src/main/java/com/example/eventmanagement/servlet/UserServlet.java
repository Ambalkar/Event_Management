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
    }    // Handle event booking

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eventIdParam = request.getParameter("event_id");
        String userName = request.getParameter("name");
        String userEmail = request.getParameter("email");

        if (eventIdParam == null || eventIdParam.isBlank() || userName == null || userName.isBlank()
                || userEmail == null || userEmail.isBlank()) {
            request.setAttribute("errorMessage", "Please provide your name, email, and select an event.");
            doGet(request, response);
            return;
        }

        int eventId;
        try {
            eventId = Integer.parseInt(eventIdParam);
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid event selection.");
            doGet(request, response);
            return;
        }

        try (Connection conn = DBConnection.getConnection()) {
            conn.setAutoCommit(false);

            String updateGuestsSql = "UPDATE events SET current_guests = current_guests + 1 "
                    + "WHERE event_id = ? AND current_guests < guest_limit";
            try (PreparedStatement updateGuestsStmt = conn.prepareStatement(updateGuestsSql)) {
                updateGuestsStmt.setInt(1, eventId);

                int updatedRows = updateGuestsStmt.executeUpdate();
                if (updatedRows == 0) {
                    conn.rollback();
                    request.setAttribute("errorMessage", "Sorry, the event is fully booked or not found.");
                    doGet(request, response);
                    return;
                }
            }

            String digitalId = UUID.randomUUID().toString().substring(0, 8).toUpperCase();
            String insertSql = "INSERT INTO bookings (event_id, user_name, user_email, digital_id) VALUES (?, ?, ?, ?)";
            try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
                insertStmt.setInt(1, eventId);
                insertStmt.setString(2, userName);
                insertStmt.setString(3, userEmail);
                insertStmt.setString(4, digitalId);
                insertStmt.executeUpdate();
            }

            conn.commit();
            request.setAttribute("successMessage", "Booking successful! Your digital ID: " + digitalId);
            doGet(request, response);

        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}
