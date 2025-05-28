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
    
    <style>
        .event-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 2rem;
        }

        .event-table th,
        .event-table td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid var(--border-color);
        }

        /* Column width specifications */
        .event-table td:nth-child(1) { /* ID column */
            width: 5%;
        }

        .event-table td:nth-child(2) { /* Name column */
            width: 15%;
        }

        .event-table td:nth-child(3) { /* Date column */
            width: 12%;
        }

        .event-table td:nth-child(4) { /* Location column */
            width: 15%;
        }

        .event-table td:nth-child(5) { /* Description column */
            width: 25%;
        }

        .event-table td:nth-child(6) { /* Guest Limit column */
            width: 8%;
        }

        .event-table td:nth-child(7) { /* Current Guests column */
            width: 8%;
        }

        .event-table td:nth-child(8) { /* Actions column */
            width: 12%;
        }

        /* Input styling */
        .event-table input[type="date"] {
            width: 100%;
            max-width: 140px;
            padding: 0.5rem;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            background: var(--input-background);
            color: var(--text-primary);
        }

        .event-table input[type="text"],
        .event-table input[type="number"],
        .event-table textarea {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            background: var(--input-background);
            color: var(--text-primary);
        }

        /* Form input styling */
.event-form .form-group {
    margin-bottom: 1.5rem;
    width: 100%;
}

.event-form .form-control {
    width: 100%;
    max-width: 100%;
    padding: 0.75rem;
    border: 1px solid var(--border-color);
    border-radius: 8px;
    background: var(--input-background);
    color: var(--text-primary);
}

/* Specific date input styling */
.event-form input[type="date"].form-control {
    width: auto;
    min-width: 200px;
    max-width: 200px;
    appearance: none;
    -webkit-appearance: none;
    padding: 0.75rem;
}

/* Make form layout more consistent */
.event-form {
    background: var(--card-background);
    padding: 2rem;
    border-radius: 12px;
    border: 1px solid var(--border-color);
    margin-bottom: 3rem;
}

/* Responsive adjustments */
@media screen and (max-width: 768px) {
    .event-form input[type="date"].form-control {
        width: 100%;
        max-width: 100%;
    }
}

        /* Responsive adjustments */
        @media screen and (max-width: 1024px) {
            .event-table {
                display: block;
                overflow-x: auto;
                white-space: nowrap;
            }
        }
    </style>
</head>
<body>
    
<div class="container">
    <div class="header-section">
        <h1>Admin Dashboard</h1>
        <a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-secondary home-btn">Home</a>
    </div>

    <c:if test="${not empty successMessage}">
        <div class="alert alert-success">${successMessage}</div>
    </c:if>
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger">${errorMessage}</div>
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
            <c:forEach var="event" items="${events}">                <tr>
    <form method="post" action="${pageContext.request.contextPath}/admin" class="event-form">
        <input type="hidden" name="event_id" value="${event.id}">
        <td class="id-cell">${event.id}</td>
        <td class="name-cell"><input type="text" name="name" value="${event.name}" required></td>
        <td class="date-cell"><input type="date" name="date" value="${event.date}" required></td>
        <td class="location-cell"><input type="text" name="location" value="${event.location}" required></td>
        <td class="description-cell"><textarea name="description">${event.description}</textarea></td>
        <td class="guest-limit-cell"><input type="number" name="guest_limit" value="${event.guestLimit}" min="1" required></td>
        <td class="current-guests-cell">${event.currentGuests}</td>
        <td class="actions-cell">
            <button type="submit" name="action" value="update" class="btn btn-primary">Update</button>
            <button type="submit" name="action" value="delete" class="btn btn-danger" 
                    onclick="return confirm('Are you sure you want to delete this event?')">Delete</button>
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
