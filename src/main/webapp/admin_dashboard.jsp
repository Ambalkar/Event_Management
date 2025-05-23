<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
<div class="container">
    <h1>Admin Dashboard</h1>

    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>

    <div class="event-form">
        <h2>Add New Event</h2>
        <form method="post" action="admin">
            <input type="hidden" name="action" value="add">
            
            <div class="form-group">
                <label for="name">Event Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description" class="form-control" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="guest_limit">Guest Limit:</label>
                <input type="number" id="guest_limit" name="guest_limit" class="form-control" min="1" required>
            </div>

            <button type="submit" class="btn btn-primary">Add Event</button>
        </form>
    </div>

    <h2>Existing Events</h2>
    <table class="event-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Date</th>
                <th>Location</th>
                <th>Description</th>
                <th>Guest Limit</th>
                <th>Current Guests</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="event" items="${events}">
                <tr>
                    <form method="post" action="admin">
                        <input type="hidden" name="event_id" value="${event.id}">
                        <td>${event.id}</td>
                        <td><input type="text" name="name" value="${event.name}" class="form-control" required></td>
                        <td><input type="date" name="date" value="${event.date}" class="form-control" required></td>
                        <td><input type="text" name="location" value="${event.location}" class="form-control" required></td>
                        <td><textarea name="description" class="form-control">${event.description}</textarea></td>
                        <td><input type="number" name="guest_limit" value="${event.guestLimit}" class="form-control" min="1" required></td>
                        <td>${event.currentGuests}</td>
                        <td>
                            <button type="submit" name="action" value="edit" class="btn btn-primary">Update</button>
                            <button type="submit" name="action" value="delete" class="btn btn-danger" 
                                    onclick="return confirm('Are you sure you want to delete this event?');">Delete</button>
                        </td>
                    </form>
                </tr>
            </c:forEach>
            <c:if test="${empty events}">
                <tr><td colspan="8" class="text-center">No events found.</td></tr>
            </c:if>
        </tbody>
    </table>
</div>
</body>
</html>
