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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
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
        private String eventType;
        private Integer parentEventId;
        private String parentEventName;
        private List<Event> subEvents = new ArrayList<>();

        public Event(int id, String name, String date, String location, String description, int guestLimit,
                int currentGuests, String eventType, Integer parentEventId, String parentEventName) {
            this.id = id;
            this.name = name;
            this.date = date;
            this.location = location;
            this.description = description;
            this.guestLimit = guestLimit;
            this.currentGuests = currentGuests;
            this.eventType = eventType;
            this.parentEventId = parentEventId;
            this.parentEventName = parentEventName;
        }

        public int getId() { return id; }
        public String getName() { return name; }
        public String getDate() { return date; }
        public String getLocation() { return location; }
        public String getDescription() { return description; }
        public int getGuestLimit() { return guestLimit; }
        public int getCurrentGuests() { return currentGuests; }
        public String getEventType() { return eventType; }
        public Integer getParentEventId() { return parentEventId; }
        public String getParentEventName() { return parentEventName; }
        public List<Event> getSubEvents() { return subEvents; }
        public boolean isMajorEvent() { return "MAJOR".equalsIgnoreCase(eventType); }
        public boolean isSubEvent() { return parentEventId != null; }
    }

    public static class Booking {
        private int id;
        private String userName;
        private String userEmail;
        private String digitalId;
        private String eventName;
        private String eventDate;
        private String bookingDate;

        public Booking(int id, String userName, String userEmail, String digitalId, String eventName, String eventDate, String bookingDate) {
            this.id = id;
            this.userName = userName;
            this.userEmail = userEmail;
            this.digitalId = digitalId;
            this.eventName = eventName;
            this.eventDate = eventDate;
            this.bookingDate = bookingDate;
        }

        public int getId() { return id; }
        public String getUserName() { return userName; }
        public String getUserEmail() { return userEmail; }
        public String getDigitalId() { return digitalId; }
        public String getEventName() { return eventName; }
        public String getEventDate() { return eventDate; }
        public String getBookingDate() { return bookingDate; }
    }

    @GetMapping("/admin")
    public String adminDashboard(Model model) {
        List<Event> events = new ArrayList<>();
        List<Event> allEvents = new ArrayList<>();
        List<Booking> bookings = new ArrayList<>();
        int totalCapacity = 0;
        int totalGuests = 0;
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
                int guestLimit = rs.getInt("guest_limit");
                int currentGuests = rs.getInt("current_guests");
                totalCapacity += guestLimit;
                totalGuests += currentGuests;
                Integer parentEventId = rs.getObject("parent_event_id") == null ? null : rs.getInt("parent_event_id");
                Event event = new Event(
                    rs.getInt("event_id"),
                    rs.getString("name"),
                    rs.getString("date"),
                    rs.getString("location"),
                    rs.getString("description"),
                    guestLimit,
                    currentGuests,
                    rs.getString("event_type"),
                    parentEventId,
                    rs.getString("parent_event_name")
                );
                allEvents.add(event);
                eventMap.put(event.getId(), event);
                if (parentEventId == null) {
                    events.add(event);
                } else if (eventMap.containsKey(parentEventId)) {
                    eventMap.get(parentEventId).getSubEvents().add(event);
                }
            }

            String bookingSql = "SELECT b.booking_id, b.user_name, b.user_email, b.digital_id, b.booking_date, "
                    + "COALESCE(p.name || ' - ' || e.name, e.name) AS event_name, e.date AS event_date "
                    + "FROM bookings b "
                    + "LEFT JOIN events e ON b.event_id = e.event_id "
                    + "LEFT JOIN events p ON e.parent_event_id = p.event_id "
                    + "ORDER BY b.booking_date DESC";
            PreparedStatement bookingPs = conn.prepareStatement(bookingSql);
            ResultSet bookingRs = bookingPs.executeQuery();
            while (bookingRs.next()) {
                bookings.add(new Booking(
                    bookingRs.getInt("booking_id"),
                    bookingRs.getString("user_name"),
                    bookingRs.getString("user_email"),
                    bookingRs.getString("digital_id"),
                    bookingRs.getString("event_name"),
                    bookingRs.getString("event_date"),
                    bookingRs.getString("booking_date")
                ));
            }
        } catch (SQLException e) {
            model.addAttribute("errorMessage", "Error loading events: " + e.getMessage());
        }
        model.addAttribute("events", events);
        model.addAttribute("bookings", bookings);
        model.addAttribute("totalEvents", allEvents.size());
        model.addAttribute("totalBookings", bookings.size());
        model.addAttribute("totalCapacity", totalCapacity);
        model.addAttribute("totalGuests", totalGuests);
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
            @RequestParam(value = "event_type", required = false, defaultValue = "SIMPLE") String eventType,
            @RequestParam(value = "parent_event_id", required = false) Integer parentEventId,
            @RequestParam(value = "sub_name", required = false) List<String> subNames,
            @RequestParam(value = "sub_date", required = false) List<String> subDates,
            @RequestParam(value = "sub_location", required = false) List<String> subLocations,
            @RequestParam(value = "sub_description", required = false) List<String> subDescriptions,
            @RequestParam(value = "sub_guest_limit", required = false) List<String> subGuestLimits,
            RedirectAttributes redirectAttributes) {

        try (Connection conn = dataSource.getConnection()) {
            ensureEventHierarchyColumns(conn);

            if ("add".equals(action)) {
                String normalizedType = "MAJOR".equalsIgnoreCase(eventType) ? "MAJOR" : "SIMPLE";
                String sql = "INSERT INTO events (name, date, location, description, guest_limit, current_guests, event_type, parent_event_id) "
                        + "VALUES (?, ?, ?, ?, ?, 0, ?, NULL)";
                PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, name);
                ps.setDate(2, java.sql.Date.valueOf(date));
                ps.setString(3, location);
                ps.setString(4, description);
                ps.setInt(5, guestLimit);
                ps.setString(6, normalizedType);
                ps.executeUpdate();

                ResultSet created = ps.getGeneratedKeys();
                if (!created.next()) {
                    throw new SQLException("Could not read the created event ID.");
                }
                int createdEventId = created.getInt(1);

                if ("MAJOR".equals(normalizedType)) {
                    insertSubEvents(conn, createdEventId, subNames, subDates, subLocations, subDescriptions, subGuestLimits);
                }
                redirectAttributes.addFlashAttribute("successMessage", "Event added successfully.");
            } else if ("addSubEvent".equals(action)) {
                insertSubEvent(conn, parentEventId, name, date, location, description, guestLimit);
                redirectAttributes.addFlashAttribute("successMessage", "Sub-event added successfully.");
            } else if ("update".equals(action)) {
                String normalizedType = "MAJOR".equalsIgnoreCase(eventType) ? "MAJOR" : "SIMPLE";
                String sql = "UPDATE events SET name = ?, date = ?, location = ?, description = ?, guest_limit = ?, event_type = ? WHERE event_id = ?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, name);
                ps.setDate(2, java.sql.Date.valueOf(date));
                ps.setString(3, location);
                ps.setString(4, description);
                ps.setInt(5, guestLimit);
                ps.setString(6, normalizedType);
                ps.setInt(7, eventId);
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

    private void insertSubEvents(Connection conn, int parentEventId, List<String> names, List<String> dates,
            List<String> locations, List<String> descriptions, List<String> guestLimits) throws SQLException {
        if (names == null) {
            return;
        }

        for (int i = 0; i < names.size(); i++) {
            String subName = names.get(i);
            String subDate = valueAt(dates, i);
            String subLocation = valueAt(locations, i);
            Integer subGuestLimit = parsePositiveInteger(valueAt(guestLimits, i));

            if (isBlank(subName) || isBlank(subDate) || isBlank(subLocation) || subGuestLimit == null || subGuestLimit < 1) {
                continue;
            }

            insertSubEvent(conn, parentEventId, subName, subDate, subLocation, valueAt(descriptions, i), subGuestLimit);
        }
    }

    private void insertSubEvent(Connection conn, Integer parentEventId, String name, String date, String location,
            String description, Integer guestLimit) throws SQLException {
        if (parentEventId == null || isBlank(name) || isBlank(date) || isBlank(location) || guestLimit == null || guestLimit < 1) {
            throw new SQLException("Sub-event details are incomplete.");
        }

        String sql = "INSERT INTO events (name, date, location, description, guest_limit, current_guests, event_type, parent_event_id) "
                + "VALUES (?, ?, ?, ?, ?, 0, 'SUB', ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, name);
        ps.setDate(2, java.sql.Date.valueOf(date));
        ps.setString(3, location);
        ps.setString(4, description);
        ps.setInt(5, guestLimit);
        ps.setInt(6, parentEventId);
        ps.executeUpdate();
    }

    private boolean isBlank(String value) {
        return value == null || value.trim().isEmpty();
    }

    private String valueAt(List<String> values, int index) {
        return values == null || index >= values.size() ? null : values.get(index);
    }

    private Integer parsePositiveInteger(String value) {
        if (isBlank(value)) {
            return null;
        }
        try {
            return Integer.valueOf(value);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
