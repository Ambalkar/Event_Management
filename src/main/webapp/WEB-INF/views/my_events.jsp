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
            --card-shadow: 0 10px 30px -5px rgba(0, 0, 0, 0.5);
            --hover-transform: translateY(-5px);
            --background-color: #0f172a;
            --card-background: rgba(15, 23, 42, 0.95);
            --text-primary: #ffffff;
            --text-secondary: #e2e8f0;
            --border-color: rgba(255, 255, 255, 0.3);
            --input-background: rgba(30, 41, 59, 0.8);
            --hover-background: rgba(255, 255, 255, 0.1);
            --container-background: rgba(15, 23, 42, 0.8);
            --section-background: linear-gradient(135deg, #1e293b, #0f172a);
        }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            color: var(--text-primary);
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
            background: rgba(15, 23, 42, 0.95);
            border-radius: 20px;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
        }

        .header-section {
            background: linear-gradient(135deg, #1a365d, #0f2942);
            color: var(--text-primary);
            padding: 2rem;
            border-radius: 15px;
            margin-bottom: 2rem;
            position: relative;
            box-shadow: var(--card-shadow);
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        .header-section::before {
            display: none;
        }

        .header-section h1 {
            margin: 0;
            font-size: 2.5em;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            position: relative;
            color: var(--text-primary);
        }

        .home-btn {
            position: absolute;
            right: 20px;
            top: 20px;
            color: var(--text-primary);
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
            border: 1px solid rgba(255,255,255,0.4);
        }

        .home-btn:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
        }

        .navigation-bar {
            background: linear-gradient(135deg, #1a365d, #0f2942);
            padding: 1.5rem;
            border-radius: 15px;
            box-shadow: var(--card-shadow);
            margin-bottom: 2rem;
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
        }

        .nav-links {
            display: flex;
            justify-content: center;
            gap: 2rem;
        }

        .nav-link {
            text-decoration: none;
            color: var(--text-primary);
            padding: 12px 24px;
            border-radius: 25px;
            transition: all 0.3s ease;
            font-weight: 500;
            position: relative;
            overflow: hidden;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid var(--border-color);
        }

        .nav-link:hover {
            background: rgba(255, 255, 255, 0.15);
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
        }

        .my-events-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(450px, 1fr));
            gap: 2.5rem;
            margin-top: 2rem;
        }

        .event-card {
            background: linear-gradient(135deg, #1a365d, #0f2942);
            border-radius: 15px;
            box-shadow: var(--card-shadow);
            padding: 2rem;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
            min-width: 400px;
        }

        .event-card:hover {
            transform: var(--hover-transform);
            box-shadow: 0 15px 40px -10px rgba(0, 0, 0, 0.4);
        }

        .event-title {
            color: #ffffff;
            font-size: 2em;
            margin-bottom: 1.5rem;
            padding: 1.5rem;
            border-radius: 15px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            background: linear-gradient(135deg, #1a365d, #0f2942);
            text-align: center;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 
                2px 2px 4px rgba(0, 0, 0, 0.5),
                0 0 20px rgba(96, 165, 250, 0.5);
            position: relative;
            overflow: hidden;
        }

        .event-title::before {
            display: none;
        }

        .event-title::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, #60a5fa, #3b82f6);
            box-shadow: 0 0 10px rgba(96, 165, 250, 0.5);
        }

        .event-details {
            margin-bottom: 2rem;
            background: linear-gradient(135deg, #1e293b, #0f172a);
            padding: 1.5rem;
            border-radius: 15px;
            border: 1px solid var(--border-color);
            box-shadow: var(--card-shadow);
        }

        .event-details p {
            margin: 1rem 0;
            color: var(--text-primary);
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-size: 1.1em;
            background: rgba(96, 165, 250, 0.1);
            padding: 1rem;
            border-radius: 10px;
            border: 1px solid rgba(96, 165, 250, 0.2);
        }

        .event-details i {
            color: var(--primary-color);
            font-size: 1.2em;
            text-shadow: 0 0 10px rgba(96, 165, 250, 0.3);
        }

        .event-details strong {
            color: var(--primary-color);
            font-weight: 600;
            text-shadow: 0 0 10px rgba(96, 165, 250, 0.3);
        }

        .digital-id {
            background: linear-gradient(135deg, #1a365d, #0f2942);
            padding: 2rem;
            border-radius: 15px;
            margin-top: 2rem;
            position: relative;
            overflow: hidden;
            border: 2px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
        }

        .digital-id::before {
            display: none;
        }

        .digital-id h3 {
            color: #ffffff;
            margin: 0 0 1.5rem 0;
            font-size: 1.5em;
            text-align: center;
            text-shadow: 
                2px 2px 4px rgba(0, 0, 0, 0.5),
                0 0 20px rgba(96, 165, 250, 0.5);
            font-weight: 700;
        }

        .participant-details {
            background: linear-gradient(135deg, #1e293b, #0f172a);
            padding: 2rem;
            border-radius: 15px;
            margin-top: 1.5rem;
            border: 1px solid var(--border-color);
            box-shadow: var(--card-shadow);
        }

        .participant-details p {
            margin: 1rem 0;
            color: var(--text-primary);
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-size: 1.1em;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
            background: rgba(96, 165, 250, 0.1);
            padding: 1rem;
            border-radius: 10px;
            border: 1px solid rgba(96, 165, 250, 0.2);
        }

        .participant-details i {
            color: var(--primary-color);
            font-size: 1.2em;
            text-shadow: 0 0 10px rgba(96, 165, 250, 0.3);
        }

        .participant-details strong {
            color: var(--primary-color);
            font-weight: 600;
            text-shadow: 0 0 10px rgba(96, 165, 250, 0.3);
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: var(--text-primary);
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 25px;
            cursor: pointer;
            width: 100%;
            font-size: 1rem;
            font-weight: 500;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        .btn-primary:hover {
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
            background: linear-gradient(135deg, #2563eb, #7c3aed);
        }

        .alert {
            padding: 1rem 1.25rem;
            border-radius: 10px;
            margin-bottom: 1.5rem;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            animation: slideIn 0.3s ease;
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
            background: var(--section-background);
        }

        .alert.success {
            background: linear-gradient(135deg, rgba(52, 211, 153, 0.2), rgba(52, 211, 153, 0.1));
            color: var(--success-color);
            border-color: rgba(52, 211, 153, 0.3);
        }

        .alert.error {
            background: linear-gradient(135deg, rgba(248, 113, 113, 0.2), rgba(248, 113, 113, 0.1));
            color: var(--danger-color);
            border-color: rgba(248, 113, 113, 0.3);
        }

        .no-events {
            text-align: center;
            color: var(--text-secondary);
            padding: 3rem;
            background: linear-gradient(135deg, #1a365d, #0f2942);
            border-radius: 15px;
            grid-column: 1 / -1;
            box-shadow: var(--card-shadow);
            animation: fadeIn 0.5s ease;
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
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
            .container {
                padding: 1rem;
                margin: 1rem;
            }
            
            .my-events-list {
                grid-template-columns: 1fr;
            }
            
            .event-card {
                min-width: unset;
            }
            
            .nav-links {
                flex-direction: column;
                align-items: center;
            }
            
            .header-section h1 {
                font-size: 2em;
            }
        }

        .email-form {
            background: linear-gradient(135deg, #1a365d, #0f2942);
            padding: 2rem;
            border-radius: 15px;
            margin-bottom: 2rem;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
            position: relative;
            overflow: hidden;
        }

        .email-form::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, var(--gradient-start), var(--gradient-end));
        }

        .email-form h2 {
            color: var(--text-primary);
            margin: 0 0 1.5rem 0;
            font-size: 1.5em;
            text-align: center;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        .email-form form {
            display: flex;
            gap: 1rem;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
        }

        .email-form input[type="email"] {
            flex: 1;
            min-width: 300px;
            padding: 1rem 1.5rem;
            border: 1px solid var(--border-color);
            border-radius: 25px;
            font-size: 1rem;
            background: var(--input-background);
            color: var(--text-primary);
            transition: all 0.3s ease;
        }

        .email-form input[type="email"]:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(96, 165, 250, 0.2);
            background: var(--input-background);
        }

        .email-form input[type="email"]::placeholder {
            color: var(--text-secondary);
            opacity: 0.7;
        }

        .email-form button {
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: var(--text-primary);
            border: none;
            padding: 1rem 2rem;
            border-radius: 25px;
            cursor: pointer;
            font-size: 1rem;
            font-weight: 500;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            display: inline-flex;
            align-items: center;
            gap: 0.75rem;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
            min-width: 200px;
            justify-content: center;
        }

        .email-form button:hover {
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
            background: linear-gradient(135deg, #2563eb, #7c3aed);
        }

        .email-form button i {
            font-size: 1.1em;
        }

        @media (max-width: 768px) {
            .email-form {
                padding: 1.5rem;
            }

            .email-form form {
                flex-direction: column;
                gap: 1rem;
            }

            .email-form input[type="email"] {
                width: 100%;
                min-width: unset;
            }

            .email-form button {
                width: 100%;
            }
        }

        .navigation {
            margin-top: 2rem;
            text-align: center;
            padding: 0 1rem;
        }

        .navigation .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.75rem;
            padding: 0.75rem 1.5rem;
            background: linear-gradient(135deg, #1a365d, #0f2942);
            color: var(--text-primary);
            text-decoration: none;
            border-radius: 25px;
            transition: all 0.3s ease;
            border: 1px solid var(--border-color);
            font-weight: 500;
            font-size: 0.95rem;
            max-width: 200px;
            margin: 0 auto;
            box-shadow: var(--card-shadow);
        }

        .navigation .btn:hover {
            transform: var(--hover-transform);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            background: linear-gradient(135deg, #0f2942, #1a365d);
        }

        .navigation .btn i {
            font-size: 1rem;
        }

        @media (max-width: 768px) {
            .navigation {
                padding: 0 0.5rem;
            }

            .navigation .btn {
                width: 100%;
                max-width: none;
                padding: 0.75rem 1rem;
            }
        }

        .participant-card {
            background: var(--section-background);
            border-radius: 15px;
            padding: 2rem;
            border: 1px solid var(--border-color);
            box-shadow: var(--card-shadow);
        }

        .participant-card h2 {
            margin: 0;
            padding: 0;
            border: none;
            background: none;
            box-shadow: none;
            color: #ffffff;
            text-shadow: 
                2px 2px 4px rgba(0, 0, 0, 0.5),
                0 0 20px rgba(96, 165, 250, 0.5);
        }

        /* Navigation Styles */
        .nav-bar {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            background: rgba(15, 23, 42, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid var(--border-color);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .nav-logo {
            color: var(--text-primary);
            text-decoration: none;
            font-size: 1.75rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            transition: transform 0.3s ease;
        }

        .nav-logo:hover {
            transform: scale(1.05);
        }

        .nav-toggle {
            display: none;
            cursor: pointer;
            font-size: 1.5rem;
            color: var(--text-primary);
        }

        .nav-links {
            display: flex;
            gap: 1.5rem;
        }

        .nav-link {
            color: var(--text-primary);
            text-decoration: none;
            padding: 0.75rem 1.5rem;
            border-radius: 10px;
            transition: all 0.3s ease;
            font-weight: 500;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid var(--border-color);
        }

        .nav-link:hover {
            background: rgba(255, 255, 255, 0.15);
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
        }

        .admin-link {
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
        }

        /* Adjust container padding for navbar */
        .container {
            padding-top: 5rem;
        }

        /* Mobile Navigation */
        @media (max-width: 768px) {
            .nav-toggle {
                display: block;
            }

            .nav-links {
                display: none;
                position: absolute;
                top: 100%;
                left: 0;
                right: 0;
                flex-direction: column;
                background: rgba(15, 23, 42, 0.98);
                padding: 1rem;
                gap: 0.5rem;
            }

            .nav-links.active {
                display: flex;
            }

            .nav-link {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="nav-bar">
        <div class="nav-container">
            <a href="${pageContext.request.contextPath}/" class="nav-logo">
                <i class="fas fa-calendar-alt"></i> EventMS
            </a>
            <div class="nav-toggle" id="navToggle">
                <i class="fas fa-bars"></i>
            </div>
            <div class="nav-links" id="navLinks">
                <a href="${pageContext.request.contextPath}/" class="nav-link">
                    <i class="fas fa-home"></i> Home
                </a>
                <a href="${pageContext.request.contextPath}/documentation.jsp" class="nav-link">
                    <i class="fas fa-info-circle"></i> About
                </a>
                <a href="${pageContext.request.contextPath}/user" class="nav-link">
                    <i class="fas fa-user"></i> User Portal
                </a>
                <a href="${pageContext.request.contextPath}/admin" class="nav-link admin-link">
                    <i class="fas fa-user-shield"></i> Admin Portal
                </a>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="header-section">
            <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">
                <i class="fas fa-home"></i> Home
            </a>
            <h1>My Events</h1>
        </div>

        <div class="email-form">
            <h2>View Your Bookings</h2>
            <form method="get" action="myEvents">
                <input type="email" name="email" placeholder="Enter your email address" required>
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

    <script>
        // Mobile navigation toggle
        const navToggle = document.getElementById('navToggle');
        const navLinks = document.getElementById('navLinks');

        navToggle.addEventListener('click', () => {
            navLinks.classList.toggle('active');
        });

        // Close mobile menu when clicking outside
        document.addEventListener('click', (e) => {
            if (!navToggle.contains(e.target) && !navLinks.contains(e.target)) {
                navLinks.classList.remove('active');
            }
        });
    </script>
</body>
</html>