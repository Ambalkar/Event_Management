<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Events - Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #60a5fa;
            --secondary-color: #a78bfa;
            --success-color: #34d399;
            --danger-color: #f87171;
            --dark-color: #0f172a;
            --light-color: #ffffff;
            --gradient-start: #3b82f6;
            --gradient-end: #8b5cf6;
            --card-shadow: 0 10px 30px -5px rgba(0, 0, 0, 0.3);
            --hover-transform: translateY(-5px);
            --background-color: #0f172a;
            --card-background: rgba(30, 41, 59, 0.95);
            --text-primary: #f8fafc;
            --text-secondary: #e2e8f0;
            --border-color: rgba(255, 255, 255, 0.2);
        }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, var(--background-color) 0%, #1e293b 100%);
            color: var(--text-primary);
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }

        .header-section {
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: white;
            padding: 2rem;
            border-radius: 15px;
            margin-bottom: 2rem;
            position: relative;
            box-shadow: var(--card-shadow);
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        .header-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, rgba(255,255,255,0.1) 25%, transparent 25%),
                        linear-gradient(-45deg, rgba(255,255,255,0.1) 25%, transparent 25%);
            background-size: 60px 60px;
            opacity: 0.1;
        }

        .header-section h1 {
            margin: 0;
            font-size: 2.5em;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
            position: relative;
        }

        .home-btn {
            position: absolute;
            right: 20px;
            top: 20px;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.15);
            transition: all 0.3s ease;
            border: 1px solid rgba(255,255,255,0.3);
        }

        .home-btn:hover {
            background: rgba(255, 255, 255, 0.25);
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
        }

        .email-form {
            background: var(--card-background);
            padding: 2rem;
            border-radius: 15px;
            box-shadow: var(--card-shadow);
            margin-bottom: 2rem;
            text-align: center;
            position: relative;
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        .email-form::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, var(--gradient-start), var(--gradient-end));
        }

        .email-form input[type="email"] {
            width: 300px;
            padding: 0.75rem 1.25rem;
            border: 1px solid var(--border-color);
            border-radius: 25px;
            font-size: 0.875rem;
            margin-right: 1rem;
            transition: all 0.3s ease;
            background: rgba(255, 255, 255, 0.05);
            color: var(--text-primary);
        }

        .email-form input[type="email"]:focus {
            border-color: var(--primary-color);
            outline: none;
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 0 3px rgba(96, 165, 250, 0.2);
        }

        .email-form button {
            padding: 0.75rem 1.5rem;
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: white;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-size: 0.875rem;
            font-weight: 500;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .email-form button:hover {
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
        }

        .my-events-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
            gap: 2rem;
        }

        .event-card {
            background: var(--card-background);
            border-radius: 15px;
            box-shadow: var(--card-shadow);
            padding: 1.5rem;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        .event-card:hover {
            transform: var(--hover-transform);
            box-shadow: 0 15px 40px -10px rgba(0, 0, 0, 0.4);
        }

        .participant-card {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .event-title {
            color: var(--text-primary);
            margin: 0 0 1.5rem 0;
            font-size: 1.5em;
            position: relative;
            padding-bottom: 1rem;
            border-bottom: 1px solid var(--border-color);
        }

        .participant-details, .event-details {
            background: rgba(255, 255, 255, 0.05);
            padding: 1.5rem;
            border-radius: 12px;
            transition: all 0.3s ease;
            border: 1px solid var(--border-color);
        }

        .participant-details:hover, .event-details:hover {
            background: rgba(255, 255, 255, 0.1);
            box-shadow: var(--card-shadow);
        }

        .participant-details p, .event-details p {
            margin: 1rem 0;
            color: var(--text-secondary);
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }

        .participant-details strong, .event-details strong {
            color: var(--text-primary);
            min-width: 120px;
            font-weight: 500;
        }

        .participant-details i, .event-details i {
            color: var(--primary-color);
            width: 20px;
            text-align: center;
        }

        .digital-id {
            font-family: monospace;
            background: rgba(96, 165, 250, 0.15);
            padding: 0.75rem 1.25rem;
            border-radius: 8px;
            display: inline-block;
            color: var(--primary-color);
            font-weight: 600;
            letter-spacing: 1px;
            border: 1px solid rgba(96, 165, 250, 0.3);
        }

        .navigation {
            margin-top: 2.5rem;
            text-align: center;
        }

        .btn {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: white;
            text-decoration: none;
            border-radius: 25px;
            transition: all 0.3s ease;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .btn:hover {
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
        }

        .no-events {
            text-align: center;
            color: var(--text-secondary);
            padding: 3rem;
            background: var(--card-background);
            border-radius: 15px;
            grid-column: 1 / -1;
            box-shadow: var(--card-shadow);
            animation: fadeIn 0.5s ease;
            border: 1px solid var(--border-color);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .no-events i {
            font-size: 3.5em;
            color: var(--primary-color);
            margin-bottom: 1.25rem;
            opacity: 0.5;
        }

        @media (max-width: 768px) {
            .my-events-list {
                grid-template-columns: 1fr;
            }
            
            .email-form input[type="email"] {
                width: 100%;
                margin-right: 0;
                margin-bottom: 1rem;
            }
            
            .email-form button {
                width: 100%;
            }
            
            .header-section h1 {
                font-size: 2em;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header-section">
            <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">
                <i class="fas fa-home"></i> Home
            </a>
            <h1>My Events</h1>
        </div>

        <div class="email-form">
            <form method="get" action="myEvents">
                <input type="email" name="email" placeholder="Enter your email to view bookings" required>
                <button type="submit">
                    <i class="fas fa-search"></i> View Bookings
                </button>
            </form>
        </div>

        <div class="my-events-list">
            <c:forEach var="participation" items="${participations}">
                <div class="event-card">
                    <div class="participant-card">
                        <h2 class="event-title">${participation.event.name}</h2>
                        <div class="participant-details">
                            <p>
                                <strong><i class="fas fa-user"></i> Name:</strong>
                                ${participation.name}
                            </p>
                            <p>
                                <strong><i class="fas fa-envelope"></i> Email:</strong>
                                ${participation.email}
                            </p>
                            <p>
                                <strong><i class="fas fa-id-card"></i> Digital ID:</strong>
                                <span class="digital-id">${participation.participantId}</span>
                            </p>
                        </div>
                        <div class="event-details">
                            <p>
                                <strong><i class="far fa-calendar-alt"></i> Date:</strong>
                                ${participation.event.date}
                            </p>
                            <p>
                                <strong><i class="fas fa-map-marker-alt"></i> Location:</strong>
                                ${participation.event.location}
                            </p>
                            <p>
                                <strong><i class="fas fa-info-circle"></i> Description:</strong>
                                ${participation.event.description}
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
            
            <c:if test="${empty participations}">
                <p class="no-events">
                    <i class="fas fa-calendar-times"></i><br>
                    No events found for this email address.
                </p>
            </c:if>
        </div>
        
        <div class="navigation">
            <a href="user" class="btn">
                <i class="fas fa-arrow-left"></i> Back to Events
            </a>
        </div>
    </div>
</body>
</html>