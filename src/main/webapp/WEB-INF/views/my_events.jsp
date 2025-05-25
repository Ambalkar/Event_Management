<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Events - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <style>
        .event-card {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        .participant-card {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .participant-details, .event-details {
            padding: 10px;
            background: #f8f9fa;
            border-radius: 4px;
        }
        .digital-id {
            font-family: monospace;
            background: #e9ecef;
            padding: 5px 10px;
            border-radius: 4px;
            display: inline-block;
        }
        .event-title {
            color: #2c3e50;
            margin-bottom: 10px;
            font-size: 1.5em;
        }
        .navigation {
            margin-top: 20px;
            display: flex;
            gap: 10px;
        }
        .btn {
            padding: 8px 16px;
            border-radius: 4px;
            text-decoration: none;
            color: white;
            background: #007bff;
        }
        .btn:hover {
            background: #0056b3;
        }
        .home-btn {
    display: inline-block;
    margin-left: 15px;
    padding: 10px 20px;
    background-color: #6c757d;
    color: white;
    text-decoration: none;
    border-radius: 4px;
}

.home-btn:hover {
    background-color: #5a6268;
}
    </style>
</head>
<body>
    <div class="container">
        <h1>My Events</h1>
         <div class="header-section">
           
            <a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-secondary home-btn">Home</a>
        </div>
        <div class="my-events-list">
            <c:forEach var="participation" items="${participations}">
                <div class="event-card">
                    <div class="participant-card">
                        <h2 class="event-title">${participation.event.name}</h2>
                        <div class="participant-details">
                            <p><strong>Participant Name:</strong> ${participation.name}</p>
                            <p><strong>Email:</strong> ${participation.email}</p>
                            <p><strong>Digital ID:</strong> <span class="digital-id">${participation.participantId}</span></p>
                        </div>
                        <div class="event-details">
                            <p><strong>Event Date:</strong> ${participation.event.date}</p>
                            <p><strong>Location:</strong> ${participation.event.location}</p>
                            <p><strong>Description:</strong> ${participation.event.description}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
            
            <c:if test="${empty participations}">
                <p class="no-events">You haven't registered for any events yet.</p>
            </c:if>
        </div>
          <div class="navigation">
            <a href="user" class="btn">Back to Events</a>
        </div>
    </div>
</body>
</html>