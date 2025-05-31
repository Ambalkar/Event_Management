package com.eventms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller

public class UserController {

    @Autowired
    private DataSource dataSource;

    @GetMapping("/user")
    public String userEvents(Model model) {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "SELECT event_id, name, date, location, description, guest_limit, current_guests FROM events";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            model.addAttribute("eventsResultSet", rs);
            // Note: Passing ResultSet directly to JSP is not ideal, but keeping as per existing JSP usage
        } catch (SQLException e) {
            model.addAttribute("errorMessage", "Error loading events: " + e.getMessage());
        }
        return "user_events"; // This will resolve to user_events.jsp
    }

    @PostMapping("/user")
    public String bookEvent(
            @RequestParam("event_id") int eventId,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            RedirectAttributes redirectAttributes) {

        try (Connection conn = dataSource.getConnection()) {
            // Insert booking into bookings table
            String sql = "INSERT INTO bookings (event_id, user_name, user_email, digital_id) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, eventId);
            ps.setString(2, name);
            ps.setString(3, email);
            // Generate a dummy digital_id for now, can be improved
            ps.setString(4, java.util.UUID.randomUUID().toString());
            ps.executeUpdate();

            // Update current_guests count in events table
            String updateSql = "UPDATE events SET current_guests = current_guests + 1 WHERE event_id = ?";
            PreparedStatement updatePs = conn.prepareStatement(updateSql);
            updatePs.setInt(1, eventId);
            updatePs.executeUpdate();

            redirectAttributes.addFlashAttribute("successMessage", "Event booked successfully.");
        } catch (SQLException e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Error booking event: " + e.getMessage());
        }

        return "redirect:/user";
    }
}
