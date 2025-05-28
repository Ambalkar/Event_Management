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
        System.out.println("Fetching events for admin dashboard...");

        List<Event> events = new ArrayList<>();

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM events ORDER BY date DESC";
            try (PreparedStatement stmt = conn.prepareStatement(sql);
                 ResultSet rs = stmt.executeQuery()) {

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
                    System.out.println("Loaded event: " + event.getName() + " (ID: " + event.getId() + ")");
                }
            }

            request.setAttribute("events", events);
            request.getRequestDispatcher("/WEB-INF/views/admin_dashboard.jsp").forward(request, response);

        } catch (SQLException e) {
            System.err.println("Error fetching events: " + e.getMessage());
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/views/admin_dashboard.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("Received action: " + action);

        try (Connection conn = DBConnection.getConnection()) {
            switch (action) {
                case "add":
                    String name = request.getParameter("name");
                    String date = request.getParameter("date");
                    String location = request.getParameter("location");
                    String description = request.getParameter("description");
                    int guestLimit = Integer.parseInt(request.getParameter("guest_limit"));

                    System.out.println("Adding new event: " + name);

                    String sql = "INSERT INTO events (name, date, location, description, guest_limit, current_guests) VALUES (?, ?, ?, ?, ?, 0)";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setString(1, name);
                    stmt.setString(2, date);
                    stmt.setString(3, location);
                    stmt.setString(4, description);
                    stmt.setInt(5, guestLimit);
                    stmt.executeUpdate();
                    System.out.println("Event added successfully");
                    break;

                case "edit":
                    try {
                        int eventId = Integer.parseInt(request.getParameter("event_id"));
                        name = request.getParameter("name");
                        date = request.getParameter("date");
                        location = request.getParameter("location");
                        description = request.getParameter("description");
                        guestLimit = Integer.parseInt(request.getParameter("guest_limit"));

                        System.out.println("Updating event with ID: " + eventId);
                        System.out.println("New values - Name: " + name + ", Date: " + date + 
                                         ", Location: " + location + ", Guest Limit: " + guestLimit);

                        sql = "UPDATE events SET name=?, date=?, location=?, description=?, guest_limit=? WHERE event_id=?";
                        stmt = conn.prepareStatement(sql);
                        stmt.setString(1, name);
                        stmt.setString(2, date);
                        stmt.setString(3, location);
                        stmt.setString(4, description);
                        stmt.setInt(5, guestLimit);
                        stmt.setInt(6, eventId);
                        
                        int rowsAffected = stmt.executeUpdate();
                        System.out.println("Rows affected by update: " + rowsAffected);
                        
                        if (rowsAffected == 0) {
                            request.setAttribute("error", "No event was updated. Event ID " + eventId + " may not exist.");
                            request.getRequestDispatcher("/WEB-INF/views/admin_dashboard.jsp").forward(request, response);
                            return;
                        }
                    } catch (NumberFormatException e) {
                        System.err.println("Error parsing event data: " + e.getMessage());
                        request.setAttribute("error", "Invalid event data format");
                        request.getRequestDispatcher("/WEB-INF/views/admin_dashboard.jsp").forward(request, response);
                        return;
                    }
                    break;

                case "delete":
                    int eventId = Integer.parseInt(request.getParameter("event_id"));
                    System.out.println("Deleting event with ID: " + eventId);
                    
                    sql = "DELETE FROM events WHERE event_id=?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, eventId);
                    stmt.executeUpdate();
                    System.out.println("Event deleted successfully");
                    break;

                default:
                    request.setAttribute("error", "Invalid action parameter: " + action);
                    request.getRequestDispatcher("/WEB-INF/views/admin_dashboard.jsp").forward(request, response);
                    return;
            }
        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/views/admin_dashboard.jsp").forward(request, response);
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin");
    }
}
