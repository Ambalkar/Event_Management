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
}
