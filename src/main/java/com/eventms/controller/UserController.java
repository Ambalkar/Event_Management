package com.eventms.controller;

import com.example.eventmanagement.model.Event;
import com.example.eventmanagement.model.Participation;
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

@Controller

public class UserController {

    @Autowired
    private DataSource dataSource;

    @GetMapping("/")
    public String home() {
        return "forward:/index.jsp";
    }

    @GetMapping("/user")
    public String userEvents(Model model) {
        List<Event> events = new ArrayList<>();
        try (Connection conn = dataSource.getConnection()) {
            String sql = "SELECT event_id, name, date, location, description, guest_limit, current_guests FROM events";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
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
        } catch (SQLException e) {
            model.addAttribute("errorMessage", "Error loading events: " + e.getMessage());
        }
        model.addAttribute("events", events);
        return "user_events"; // This will resolve to user_events.jsp
    }

    @GetMapping("/myEvents")
    public String myEvents(@RequestParam(value = "email", required = false) String email, Model model) {
        List<Participation> participations = new ArrayList<>();

        if (email != null && !email.trim().isEmpty()) {
            try (Connection conn = dataSource.getConnection()) {
                String sql = "SELECT b.user_name AS participant_name, b.user_email, b.digital_id, "
                        + "e.event_id, e.name AS event_name, e.date, e.location, e.description "
                        + "FROM bookings b "
                        + "JOIN events e ON b.event_id = e.event_id "
                        + "WHERE b.user_email = ? "
                        + "ORDER BY e.date DESC, b.booking_date DESC";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Participation participation = new Participation();
                    participation.setName(rs.getString("participant_name"));
                    participation.setEmail(rs.getString("user_email"));
                    participation.setParticipantId(rs.getString("digital_id"));

                    Event event = new Event();
                    event.setId(rs.getInt("event_id"));
                    event.setName(rs.getString("event_name"));
                    event.setDate(rs.getString("date"));
                    event.setLocation(rs.getString("location"));
                    event.setDescription(rs.getString("description"));

                    participation.setEvent(event);
                    participations.add(participation);
                }
            } catch (SQLException e) {
                model.addAttribute("errorMessage", "Error loading your events: " + e.getMessage());
            }
        }

        model.addAttribute("email", email);
        model.addAttribute("participations", participations);
        return "my_events";
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
