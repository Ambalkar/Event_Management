package com.example.eventmanagement.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.eventmanagement.model.Event;
import com.example.eventmanagement.util.DBConnection;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Event> events = new ArrayList<>();

        try (Connection conn = DBConnection.getConnection(); PreparedStatement stmt = conn.prepareStatement("SELECT * FROM events"); ResultSet rs = stmt.executeQuery()) {

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
            }

            request.setAttribute("events", events);
            request.getRequestDispatcher("/WEB-INF/views/admin_dashboard.jsp").forward(request, response);

        } catch (SQLException e) {
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/views/error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try (Connection conn = DBConnection.getConnection()) {
            switch (action) {
                case "add":
                    String name = request.getParameter("name");
                    String date = request.getParameter("date");
                    String location = request.getParameter("location");
                    String description = request.getParameter("description");
                    int guestLimit = Integer.parseInt(request.getParameter("guest_limit"));

                    String sql = "INSERT INTO events (name, date, location, description, guest_limit, current_guests) VALUES (?, ?, ?, ?, ?, 0)";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setString(1, name);
                    stmt.setString(2, date);
                    stmt.setString(3, location);
                    stmt.setString(4, description);
                    stmt.setInt(5, guestLimit);
                    stmt.executeUpdate();
                    break;

                case "edit":
                    int eventId = Integer.parseInt(request.getParameter("event_id"));
                    name = request.getParameter("name");
                    date = request.getParameter("date");
                    location = request.getParameter("location");
                    description = request.getParameter("description");
                    guestLimit = Integer.parseInt(request.getParameter("guest_limit"));

                    sql = "UPDATE events SET name=?, date=?, location=?, description=?, guest_limit=? WHERE event_id=?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setString(1, name);
                    stmt.setString(2, date);
                    stmt.setString(3, location);
                    stmt.setString(4, description);
                    stmt.setInt(5, guestLimit);
                    stmt.setInt(6, eventId);
                    stmt.executeUpdate();
                    break;

                case "delete":
                    eventId = Integer.parseInt(request.getParameter("event_id"));
                    sql = "DELETE FROM events WHERE event_id=?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, eventId);
                    stmt.executeUpdate();
                    break;

                default:
                    throw new ServletException("Invalid action parameter");
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }

        response.sendRedirect("admin");
    }
}
