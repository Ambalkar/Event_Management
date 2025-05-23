package com.example.eventmanagement.servlet;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.example.eventmanagement.util.DBConnection;

@WebServlet("/testdb")
public class TestDBServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/plain");
        
        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM events")) {
            
            while (rs.next()) {
                response.getWriter().println(String.format(
                    "Event: ID=%d, Name=%s, Date=%s",
                    rs.getInt("event_id"),
                    rs.getString("name"),
                    rs.getString("date")
                ));
            }
            
        } catch (SQLException e) {
            e.printStackTrace(response.getWriter());
        }
    }
}