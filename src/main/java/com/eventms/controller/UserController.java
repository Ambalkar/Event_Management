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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

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
            ensureEventHierarchyColumns(conn);

            String sql = "SELECT e.event_id, e.name, e.date, e.location, e.description, e.guest_limit, "
                    + "e.current_guests, e.event_type, e.parent_event_id, p.name AS parent_event_name "
                    + "FROM events e "
                    + "LEFT JOIN events p ON e.parent_event_id = p.event_id "
                    + "ORDER BY COALESCE(e.parent_event_id, e.event_id), e.parent_event_id NULLS FIRST, e.date";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Map<Integer, Event> eventMap = new LinkedHashMap<>();
            while (rs.next()) {
                Event event = new Event();
                event.setId(rs.getInt("event_id"));
                event.setName(rs.getString("name"));
                event.setDate(rs.getString("date"));
                event.setLocation(rs.getString("location"));
                event.setDescription(rs.getString("description"));
                event.setGuestLimit(rs.getInt("guest_limit"));
                event.setCurrentGuests(rs.getInt("current_guests"));
                event.setEventType(rs.getString("event_type"));
                Integer parentEventId = rs.getObject("parent_event_id") == null ? null : rs.getInt("parent_event_id");
                event.setParentEventId(parentEventId);
                event.setParentEventName(rs.getString("parent_event_name"));

                eventMap.put(event.getId(), event);
                if (parentEventId == null) {
                    events.add(event);
                } else if (eventMap.containsKey(parentEventId)) {
                    eventMap.get(parentEventId).getSubEvents().add(event);
                }
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
                ensureEventHierarchyColumns(conn);

                String sql = "SELECT b.user_name AS participant_name, b.user_email, b.digital_id, "
                        + "e.event_id, e.name AS event_name, e.date, e.location, e.description, "
                        + "e.event_type, e.parent_event_id, p.name AS parent_event_name "
                        + "FROM bookings b "
                        + "JOIN events e ON b.event_id = e.event_id "
                        + "LEFT JOIN events p ON e.parent_event_id = p.event_id "
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
                    event.setEventType(rs.getString("event_type"));
                    event.setParentEventId(rs.getObject("parent_event_id") == null ? null : rs.getInt("parent_event_id"));
                    event.setParentEventName(rs.getString("parent_event_name"));

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
            ensureEventHierarchyColumns(conn);
            conn.setAutoCommit(false);

            List<Integer> reservedEventIds = getReservedEventIds(conn, eventId);

            if (reservedEventIds.isEmpty() || hasFullEvent(conn, reservedEventIds)) {
                conn.rollback();
                redirectAttributes.addFlashAttribute("errorMessage", "The event is Housefull you can explore other events.");
                return "redirect:/user";
            }

            for (Integer reservedEventId : reservedEventIds) {
                String updateSql = "UPDATE events SET current_guests = current_guests + 1 "
                        + "WHERE event_id = ? AND current_guests < guest_limit";
                PreparedStatement updatePs = conn.prepareStatement(updateSql);
                updatePs.setInt(1, reservedEventId);
                int updatedRows = updatePs.executeUpdate();

                if (updatedRows == 0) {
                    conn.rollback();
                    redirectAttributes.addFlashAttribute("errorMessage", "The event is Housefull you can explore other events.");
                    return "redirect:/user";
                }
            }

            String sql = "INSERT INTO bookings (event_id, user_name, user_email, digital_id) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, eventId);
            ps.setString(2, name);
            ps.setString(3, email);
            // Generate a dummy digital_id for now, can be improved
            ps.setString(4, java.util.UUID.randomUUID().toString());
            ps.executeUpdate();

            conn.commit();

            redirectAttributes.addFlashAttribute("successMessage", "Event booked successfully.");
        } catch (SQLException e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Error booking event: " + e.getMessage());
        }

        return "redirect:/user";
    }

    private List<Integer> getReservedEventIds(Connection conn, int eventId) throws SQLException {
        List<Integer> reservedEventIds = new ArrayList<>();

        String eventSql = "SELECT event_type, parent_event_id FROM events WHERE event_id = ?";
        PreparedStatement eventPs = conn.prepareStatement(eventSql);
        eventPs.setInt(1, eventId);
        ResultSet eventRs = eventPs.executeQuery();

        if (!eventRs.next()) {
            return reservedEventIds;
        }

        String eventType = eventRs.getString("event_type");
        boolean isTopLevelMajor = "MAJOR".equalsIgnoreCase(eventType) && eventRs.getObject("parent_event_id") == null;
        reservedEventIds.add(eventId);

        if (isTopLevelMajor) {
            String subEventSql = "SELECT event_id FROM events WHERE parent_event_id = ? ORDER BY date, event_id";
            PreparedStatement subEventPs = conn.prepareStatement(subEventSql);
            subEventPs.setInt(1, eventId);
            ResultSet subEventRs = subEventPs.executeQuery();

            while (subEventRs.next()) {
                reservedEventIds.add(subEventRs.getInt("event_id"));
            }
        }

        return reservedEventIds;
    }

    private boolean hasFullEvent(Connection conn, List<Integer> eventIds) throws SQLException {
        StringBuilder sql = new StringBuilder("SELECT COUNT(*) FROM events WHERE current_guests >= guest_limit AND event_id IN (");
        for (int i = 0; i < eventIds.size(); i++) {
            if (i > 0) {
                sql.append(", ");
            }
            sql.append("?");
        }
        sql.append(")");

        PreparedStatement ps = conn.prepareStatement(sql.toString());
        for (int i = 0; i < eventIds.size(); i++) {
            ps.setInt(i + 1, eventIds.get(i));
        }

        ResultSet rs = ps.executeQuery();
        rs.next();
        return rs.getInt(1) > 0;
    }

    private void ensureEventHierarchyColumns(Connection conn) throws SQLException {
        try (PreparedStatement ps = conn.prepareStatement(
                "ALTER TABLE events ADD COLUMN IF NOT EXISTS event_type VARCHAR(20) NOT NULL DEFAULT 'SIMPLE'")) {
            ps.executeUpdate();
        }
        try (PreparedStatement ps = conn.prepareStatement(
                "ALTER TABLE events ADD COLUMN IF NOT EXISTS parent_event_id INTEGER REFERENCES events(event_id) ON DELETE CASCADE")) {
            ps.executeUpdate();
        }
    }
}
