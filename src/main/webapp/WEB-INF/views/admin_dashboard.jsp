<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
    <div class="container">
        <div class="header-section">
            <h1>Admin Dashboard</h1>
            <a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-secondary home-btn">Home</a>
        </div>

        <div class="event-form">
            <h2>Add New Event</h2>
            <form method="post" action="admin">
                <input type="hidden" name="action" value="add">
                
                <div class="form-group">
                    <label for="name">Event Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="date">Date:</label>
                    <input type="date" id="date" name="date" required>
                </div>

                <div class="form-group">
                    <label for="location">Location:</label>
                    <input type="text" id="location" name="location" required>
                </div>

                <div class="form-group">
                    <label for="description">Description:</label>
                    <textarea id="description" name="description" rows="3"></textarea>
                </div>

                <div class="form-group">
                    <label for="guest_limit">Guest Limit:</label>
                    <input type="number" id="guest_limit" name="guest_limit" min="1" required>
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
                            <td><input type="text" name="name" value="${event.name}" required></td>
                            <td><input type="date" name="date" value="${event.date}" required></td>
                            <td><input type="text" name="location" value="${event.location}" required></td>
                            <td><textarea name="description">${event.description}</textarea></td>
                            <td><input type="number" name="guest_limit" value="${event.guestLimit}" min="1" required></td>
                            <td>${event.currentGuests}</td>
                            <td>
                                <button type="submit" name="action" value="edit">Update</button>
                                <button type="submit" name="action" value="delete" 
                                        onclick="return confirm('Are you sure?');">Delete</button>
                            </td>
                        </form>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>