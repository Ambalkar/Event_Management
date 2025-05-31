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
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class AdminController {

    @Autowired
    private DataSource dataSource;

    public static class Event {
        private int id;
        private String name;
        private String date;
        private String location;
        private String description;
        private int guestLimit;
        private int currentGuests;

        public Event(int id, String name, String date, String location, String description, int guestLimit, int currentGuests) {
            this.id = id;
            this.name = name;
            this.date = date;
            this.location = location;
            this.description = description;
            this.guestLimit = guestLimit;
            this.currentGuests = currentGuests;
        }

        public int getId() { return id; }
        public String getName() { return name; }
        public String getDate() { return date; }
        public String getLocation() { return location; }
        public String getDescription() { return description; }
        public int getGuestLimit() { return guestLimit; }
        public int getCurrentGuests() { return currentGuests; }
    }

    @GetMapping("/admin")
    public String adminDashboard(Model model) {
        List<Event> events = new ArrayList<>();
        try (Connection conn = dataSource.getConnection()) {
            String sql = "SELECT event_id, name, date, location, description, guest_limit, current_guests FROM events";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                events.add(new Event(
                    rs.getInt("event_id"),
                    rs.getString("name"),
                    rs.getString("date"),
                    rs.getString("location"),
                    rs.getString("description"),
                    rs.getInt("guest_limit"),
                    rs.getInt("current_guests")
                ));
            }
        } catch (SQLException e) {
            model.addAttribute("errorMessage", "Error loading events: " + e.getMessage());
        }
        model.addAttribute("events", events);
        return "admin_dashboard"; // This will resolve to admin_dashboard.jsp
    }

    @PostMapping("/admin")
    public String handleEventAction(
            @RequestParam("action") String action,
            @RequestParam(value = "event_id", required = false) Integer eventId,
            @RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "date", required = false) String date,
            @RequestParam(value = "location", required = false) String location,
            @RequestParam(value = "description", required = false) String description,
            @RequestParam(value = "guest_limit", required = false) Integer guestLimit,
            RedirectAttributes redirectAttributes) {

        try (Connection conn = dataSource.getConnection()) {
            if ("add".equals(action)) {
                String sql = "INSERT INTO events (name, date, location, description, guest_limit, current_guests) VALUES (?, ?, ?, ?, ?, 0)";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, name);
                ps.setDate(2, java.sql.Date.valueOf(date));
                ps.setString(3, location);
                ps.setString(4, description);
                ps.setInt(5, guestLimit);
                ps.executeUpdate();
                redirectAttributes.addFlashAttribute("successMessage", "Event added successfully.");
            } else if ("update".equals(action)) {
                String sql = "UPDATE events SET name = ?, date = ?, location = ?, description = ?, guest_limit = ? WHERE event_id = ?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, name);
                ps.setDate(2, java.sql.Date.valueOf(date));
                ps.setString(3, location);
                ps.setString(4, description);
                ps.setInt(5, guestLimit);
                ps.setInt(6, eventId);
                ps.executeUpdate();
                redirectAttributes.addFlashAttribute("successMessage", "Event updated successfully.");
            } else if ("delete".equals(action)) {
                String sql = "DELETE FROM events WHERE event_id = ?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1, eventId);
                ps.executeUpdate();
                redirectAttributes.addFlashAttribute("successMessage", "Event deleted successfully.");
            } else {
                redirectAttributes.addFlashAttribute("errorMessage", "Invalid action.");
            }
        } catch (SQLException e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Database error: " + e.getMessage());
        }

        return "redirect:/admin";
    }
}
