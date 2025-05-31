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
}
