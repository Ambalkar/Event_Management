<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Booking - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
</head>
<body>    <div class="container">
        <div class="header-section">
            <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">Home</a>
            <h1>Events</h1>
        </div>
        <nav class="navigation-bar">
            <div class="nav-links">
                <a href="user" class="nav-link">Available Events</a>
                <a href="myEvents" class="nav-link">My Events</a>
            </div>
        </nav>
        
        <h1>Available Events</h1>
        
        <c:if test="${not empty successMessage}">
            <div class="alert success">${successMessage}</div>
        </c:if>
        
        <c:if test="${not empty errorMessage}">
            <div class="alert error">${errorMessage}</div>
        </c:if>

        <div class="events-list">
            <c:forEach var="event" items="${events}">
                <div class="event-card">
                    <h2>${event.name}</h2>
                    <p class="date">Date: ${event.date}</p>
                    <p class="location">Location: ${event.location}</p>
                    <p class="description">${event.description}</p>
                    <p class="guests">Available Spots: ${event.guestLimit - event.currentGuests}</p>
                    
                    <c:if test="${event.guestLimit > event.currentGuests}">
                        <form method="post" action="user" class="booking-form">
                            <input type="hidden" name="event_id" value="${event.id}">
                            <div class="form-group">
                                <input type="text" name="name" placeholder="Your Name" required>
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" placeholder="Your Email" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Book Event</button>
                        </form>
                    </c:if>
                    <c:if test="${event.guestLimit <= event.currentGuests}">
                        <p class="fully-booked">Event Fully Booked</p>
                    </c:if>
                </div>
            </c:forEach>
            
            <c:if test="${empty events}">
                <p class="no-events">No events available at the moment.</p>
            </c:if>
        </div>
    </div>
</body>
</html>