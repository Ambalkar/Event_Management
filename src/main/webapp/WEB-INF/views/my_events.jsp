<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Events - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
</head>
<body>
    <div class="container">
        <h1>My Events</h1>
        
        <div class="my-events-list">
            <c:forEach var="participation" items="${participations}">
                <div class="event-card">
                    <div class="participant-card">
                        <h2>${participation.event.name}</h2>
                        <div class="participant-details">
                            <p><strong>Participant Name:</strong> ${participation.name}</p>
                            <p><strong>Email:</strong> ${participation.email}</p>
                            <p><strong>Participant ID:</strong> ${participation.participantId}</p>
                            <p><strong>Registration Date:</strong> ${participation.registrationDate}</p>
                        </div>
                        <div class="event-details">
                            <p><strong>Date:</strong> ${participation.event.date}</p>
                            <p><strong>Location:</strong> ${participation.event.location}</p>
                            <p class="description">${participation.event.description}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
            
            <c:if test="${empty participations}">
                <p class="no-events">You haven't registered for any events yet.</p>
            </c:if>
        </div>
        
        <div class="navigation">
            <a href="user" class="btn btn-secondary">Back to Available Events</a>
            <a href="my-events?email=${param.email}" class="btn btn-secondary">View My Events</a>
        </div>
    </div>
</body>
</html>