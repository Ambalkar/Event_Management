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
import com.example.eventmanagement.model.Participation;
import com.example.eventmanagement.util.DBConnection;

@WebServlet("/myEvents")
public class MyEventsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Participation> participations = new ArrayList<>();

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT u.name AS participant_name, u.email, u.digital_id, "
                    + "e.event_id, e.name AS event_name, e.date, e.location, e.description "
                    + "FROM users u "
                    + "JOIN events e ON u.booked_event_id = e.event_id "
                    + "ORDER BY e.date DESC";

            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
                    Participation participation = new Participation();
                    participation.setName(rs.getString("participant_name"));
                    participation.setEmail(rs.getString("email"));
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
            }

            request.setAttribute("participations", participations);
            request.getRequestDispatcher("/WEB-INF/views/my_events.jsp").forward(request, response);

        } catch (SQLException e) {
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/WEB-INF/views/error.jsp").forward(request, response);
        }
    }
}
