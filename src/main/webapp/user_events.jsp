<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Event Booking - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { border-collapse: collapse; width: 100%; margin-bottom: 20px; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        form { margin-bottom: 20px; }
        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%; padding: 6px; margin: 4px 0; box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50; color: white; border: none; padding: 10px 20px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .message {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
        }
        .error {
            background-color: #f8d7da;
            color: #721c24;
        }
        .success {
            background-color: #d4edda;
            color: #155724;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        .header-section {
            padding: 10px 0;
            margin-bottom: 20px;
            position: relative;
        }
        .home-btn {
            display: inline-block;
            text-decoration: none;
            padding: 5px 10px;
            background-color: #6c757d;
            color: white;
            border-radius: 3px;
            font-size: 14px;
            position: absolute;
            left: 0;
            top: 0;
        }
        .home-btn:hover {
            background-color: #5a6268;
        }
        h1 {
            text-align: center;
            margin: 0 auto;
            padding-top: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header-section">
        <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">Home</a>
        <h1>Event Booking</h1>
    </div>

<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    String successMessage = (String) request.getAttribute("successMessage");
    if (errorMessage != null) {
%>
    <div class="message error"><%= errorMessage %></div>
<%
    }
    if (successMessage != null) {
%>
    <div class="message success"><%= successMessage %></div>
<%
    }
%>

<table>
    <tr>
        <th>ID</th><th>Name</th><th>Date</th><th>Location</th><th>Description</th><th>Guest Limit</th><th>Current Guests</th><th>Book</th>
    </tr>
    <%
        ResultSet rs = (ResultSet) request.getAttribute("eventsResultSet");
        if (rs != null) {
            try {
                while (rs.next()) {
    %>
    <tr>
        <form method="post" action="user">
            <td><%= rs.getInt("event_id") %><input type="hidden" name="event_id" value="<%= rs.getInt("event_id") %>" /></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getDate("date") %></td>
            <td><%= rs.getString("location") %></td>
            <td><%= rs.getString("description") %></td>
            <td><%= rs.getInt("guest_limit") %></td>
            <td><%= rs.getInt("current_guests") %></td>
            <td>
                <input type="text" name="name" placeholder="Your Name" required /><br/>
                <input type="email" name="email" placeholder="Your Email" required /><br/>
                <input type="submit" value="Book" />
            </td>
        </form>
    </tr>
    <%
                }
            } catch (SQLException e) {
                out.println("<tr><td colspan='8'>Error loading events.</td></tr>");
            }
        } else {
    %>
    <tr><td colspan="8">No events found.</td></tr>
    <%
        }
    %>
</table>
</div>
</body>
</html>
