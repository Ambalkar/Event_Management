<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Booking - Event Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #d1d5db;
            --secondary-color: #9ca3af;
            --accent-teal: #2dd4bf;
            --accent-green: #22c55e;
            --accent-gold: #fbbf24;
            --accent-coral: #fb7185;
            --success-color: #34d399;
            --danger-color: #f87171;
            --dark-color: #07080a;
            --light-color: #f4f4f5;
            --gradient-start: #6b7280;
            --gradient-end: #374151;
            --card-shadow: 0 10px 30px -5px rgba(0, 0, 0, 0.5);
            --hover-transform: translateY(-5px);
            --background-color: #07080a;
            --card-background: rgba(8, 9, 11, 0.96);
            --text-primary: #f4f4f5;
            --text-secondary: #d4d4d8;
            --border-color: rgba(255, 255, 255, 0.3);
            --input-background: rgba(24, 26, 31, 0.82);
            --hover-background: rgba(255, 255, 255, 0.1);
            --container-background: rgba(8, 9, 11, 0.82);
        }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background:
                linear-gradient(115deg, rgba(45, 212, 191, 0.08), transparent 28%),
                linear-gradient(245deg, rgba(251, 191, 36, 0.08), transparent 30%),
                linear-gradient(135deg, var(--background-color) 0%, #15171c 100%);
            color: var(--text-primary);
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
            background: var(--container-background);
            border-radius: 8px;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
        }

        .header-section {
            background:
                linear-gradient(135deg, rgba(45, 212, 191, 0.20), transparent 36%),
                linear-gradient(225deg, rgba(251, 191, 36, 0.18), transparent 40%),
                linear-gradient(135deg, #181a1f 0%, #090a0d 100%);
            color: var(--text-primary);
            padding: 2rem;
            border-radius: 8px;
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
            background: var(--card-background);
            padding: 1.5rem;
            border-radius: 8px;
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
            border-radius: 8px;
            transition: all 0.3s ease;
            font-weight: 500;
            position: relative;
            overflow: hidden;
            background: rgba(255, 255, 255, 0.07);
            border: 1px solid rgba(255, 255, 255, 0.14);
        }

        .nav-link:hover {
            background: rgba(45, 212, 191, 0.14);
            border-color: rgba(45, 212, 191, 0.45);
            transform: var(--hover-transform);
            box-shadow: 0 14px 30px rgba(45, 212, 191, 0.12);
        }

        .events-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .event-card {
            background: linear-gradient(145deg, rgba(20, 23, 28, 0.98), rgba(7, 8, 10, 0.96));
            border-radius: 8px;
            box-shadow: var(--card-shadow);
            padding: 1.5rem;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.14);
            backdrop-filter: blur(10px);
        }

        .event-card::before {
            content: '';
            position: absolute;
            inset: 0 0 auto 0;
            height: 4px;
            background: linear-gradient(90deg, var(--accent-teal), var(--accent-gold), var(--accent-green));
        }

        .event-card:hover {
            transform: translateY(-8px);
            border-color: rgba(255, 255, 255, 0.32);
            box-shadow: 0 24px 54px -14px rgba(45, 212, 191, 0.28);
        }

        .event-card h2 {
            color: var(--text-primary);
            margin: 0 0 1.5rem 0;
            font-size: 1.5em;
            position: relative;
            padding-bottom: 1rem;
            border-bottom: 1px solid var(--border-color);
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        .event-card p {
            margin: 1rem 0;
            color: var(--text-secondary);
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }

        .event-card .date, .event-card .location {
            background: rgba(45, 212, 191, 0.10);
            padding: 0.75rem 1.25rem;
            border-radius: 20px;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            margin: 0.5rem 0;
            border: 1px solid rgba(45, 212, 191, 0.28);
        }

        .event-card .date i, .event-card .location i {
            color: var(--accent-teal);
        }

        .event-card .guests {
            background: rgba(52, 211, 153, 0.15);
            color: var(--success-color);
            padding: 0.75rem 1.25rem;
            border-radius: 20px;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            margin: 1rem 0;
            font-weight: 500;
            border: 1px solid rgba(52, 211, 153, 0.3);
        }

        .booking-form {
            margin-top: 1.5rem;
            padding-top: 1.5rem;
            border-top: 1px solid var(--border-color);
        }

        .form-group {
            margin-bottom: 1.25rem;
            position: relative;
        }

        .form-group input {
            width: 100%;
            padding: 0.75rem 1rem;
            border: 1px solid var(--border-color);
            border-radius: 10px;
            font-size: 0.875rem;
            transition: all 0.3s ease;
            background: var(--input-background);
            color: var(--text-primary);
        }

        .form-group input:focus {
            border-color: var(--accent-teal);
            outline: none;
            background: var(--input-background);
            box-shadow: 0 0 0 3px rgba(45, 212, 191, 0.18);
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent-teal), var(--accent-green));
            color: #04110e;
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 8px;
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
            box-shadow: 0 18px 44px rgba(34, 197, 94, 0.28);
            background: linear-gradient(135deg, #5eead4, #86efac);
        }

        .fully-booked {
            background: rgba(248, 113, 113, 0.15);
            color: var(--danger-color);
            padding: 0.75rem;
            border-radius: 10px;
            text-align: center;
            margin-top: 1rem;
            font-weight: 500;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            border: 1px solid rgba(248, 113, 113, 0.3);
        }

        .event-kind {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1rem;
            padding: 0.45rem 0.7rem;
            border-radius: 8px;
            border: 1px solid rgba(251, 191, 36, 0.28);
            color: var(--accent-gold);
            background: rgba(251, 191, 36, 0.08);
            font-size: 0.78rem;
            font-weight: 700;
            text-transform: uppercase;
        }

        .booking-status {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            width: fit-content;
            max-width: 100%;
            margin: 0.4rem 0 0.8rem;
            padding: 0.55rem 0.75rem;
            border-radius: 8px;
            color: var(--accent-gold);
            background: rgba(251, 191, 36, 0.09);
            border: 1px solid rgba(251, 191, 36, 0.26);
            font-size: 0.82rem;
            font-weight: 700;
        }

        .sub-events {
            margin-top: 1.5rem;
            padding-top: 1rem;
            border-top: 1px solid var(--border-color);
        }

        .sub-events h3 {
            margin: 0 0 1rem;
            color: var(--text-primary);
            font-size: 1rem;
        }

        .sub-event-card {
            margin-top: 1rem;
            padding: 1rem;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.055);
            border: 1px solid rgba(255, 255, 255, 0.14);
        }

        .sub-event-card h4 {
            margin: 0 0 0.75rem;
            color: var(--text-primary);
            font-size: 1.05rem;
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
        }

        .alert.success {
            background: rgba(52, 211, 153, 0.15);
            color: var(--success-color);
            border-color: rgba(52, 211, 153, 0.3);
        }

        .alert.error {
            background: rgba(248, 113, 113, 0.15);
            color: var(--danger-color);
            border-color: rgba(248, 113, 113, 0.3);
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

        /* Navigation Styles */
        .nav-bar {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            background: rgba(6, 7, 8, 0.86);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.14);
            box-shadow: 0 12px 34px rgba(0, 0, 0, 0.32);
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

        .nav-link.active {
            background: linear-gradient(135deg, var(--accent-teal), var(--accent-green));
            color: #04110e;
            border-color: rgba(45, 212, 191, 0.45);
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
                background: rgba(8, 9, 11, 0.98);
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

        body {
            background:
                linear-gradient(180deg, rgba(7, 8, 10, 0.10), #07080a 82%),
                linear-gradient(115deg, rgba(45, 212, 191, 0.10), transparent 34%),
                linear-gradient(245deg, rgba(251, 191, 36, 0.09), transparent 36%),
                #07080a;
        }

        .container {
            max-width: 1240px;
            padding: 6.25rem 1.5rem 3rem;
            background: transparent;
            border: 0;
            box-shadow: none;
            backdrop-filter: none;
        }

        .header-section {
            min-height: 430px;
            display: flex;
            align-items: flex-end;
            padding: 3rem;
            margin-bottom: 1.5rem;
            background:
                linear-gradient(90deg, rgba(7, 8, 10, 0.92), rgba(7, 8, 10, 0.58) 52%, rgba(7, 8, 10, 0.72)),
                linear-gradient(180deg, rgba(7, 8, 10, 0.05), rgba(7, 8, 10, 0.86)),
                url('${pageContext.request.contextPath}/images/eventbg0.jpg') center/cover no-repeat;
        }

        .header-section::before {
            display: none;
        }

        .hero-content {
            width: min(720px, 100%);
            position: relative;
            z-index: 1;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.45rem 0.7rem;
            margin: 0 0 1rem;
            border-radius: 999px;
            color: #a7f3d0;
            background: rgba(45, 212, 191, 0.12);
            border: 1px solid rgba(45, 212, 191, 0.28);
            font-size: 0.78rem;
            font-weight: 700;
            text-transform: uppercase;
        }

        .header-section h1 {
            text-align: left;
            max-width: 680px;
            font-size: clamp(2.2rem, 7vw, 4.6rem);
            line-height: 1.02;
            letter-spacing: 0;
            text-shadow: 0 18px 34px rgba(0, 0, 0, 0.48);
        }

        .hero-copy {
            max-width: 620px;
            margin: 1.2rem 0 0;
            color: #e4e4e7;
            font-size: 1.06rem;
            line-height: 1.7;
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 0.85rem;
            margin-top: 1.7rem;
        }

        .hero-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.6rem;
            min-height: 46px;
            padding: 0.75rem 1.1rem;
            border-radius: 8px;
            color: #04110e;
            background: linear-gradient(135deg, #5eead4, #86efac);
            text-decoration: none;
            font-weight: 700;
            box-shadow: 0 18px 44px rgba(45, 212, 191, 0.22);
        }

        .hero-btn.secondary {
            color: var(--text-primary);
            background: rgba(255, 255, 255, 0.10);
            border: 1px solid rgba(255, 255, 255, 0.22);
            box-shadow: none;
        }

        .hero-stats {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 0.85rem;
            margin-top: 2rem;
            max-width: 640px;
        }

        .hero-stat {
            padding: 0.9rem;
            border-radius: 8px;
            background: rgba(7, 8, 10, 0.58);
            border: 1px solid rgba(255, 255, 255, 0.14);
        }

        .hero-stat strong {
            display: block;
            color: var(--text-primary);
            font-size: 1.35rem;
        }

        .hero-stat span {
            color: var(--text-secondary);
            font-size: 0.82rem;
        }

        .events-heading {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            gap: 1rem;
            margin: 2rem 0 0;
        }

        .events-heading h2 {
            margin: 0;
            font-size: 1.8rem;
            color: var(--text-primary);
        }

        .events-heading p {
            margin: 0.45rem 0 0;
            color: var(--text-secondary);
        }

        .event-count {
            flex: 0 0 auto;
            padding: 0.65rem 0.9rem;
            border-radius: 8px;
            color: var(--accent-gold);
            background: rgba(251, 191, 36, 0.08);
            border: 1px solid rgba(251, 191, 36, 0.24);
            font-weight: 700;
        }

        .events-list {
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.25rem;
            margin-top: 1.25rem;
        }

        .event-card {
            display: flex;
            flex-direction: column;
            padding: 1.25rem;
        }

        .event-card h2 {
            font-size: 1.35rem;
            line-height: 1.3;
            margin-bottom: 1rem;
        }

        .event-card .description {
            flex: 1;
            line-height: 1.65;
        }

        .event-image {
            width: 100%;
            aspect-ratio: 16 / 9;
            object-fit: cover;
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.14);
            margin-bottom: 1rem;
        }

        .event-card .date,
        .event-card .location,
        .event-card .guests {
            width: fit-content;
            max-width: 100%;
            border-radius: 8px;
        }

        .booking-form {
            background: rgba(255, 255, 255, 0.045);
            margin-top: 1.25rem;
            padding: 1rem;
            border: 1px solid rgba(255, 255, 255, 0.12);
            border-radius: 8px;
        }

        .booking-form-title {
            display: flex;
            align-items: center;
            gap: 0.55rem;
            margin: 0 0 0.9rem;
            color: var(--text-primary);
            font-weight: 700;
        }

        .form-group input {
            box-sizing: border-box;
            border-radius: 8px;
        }

        .btn-primary {
            display: inline-flex;
            justify-content: center;
            align-items: center;
            gap: 0.6rem;
            min-height: 44px;
        }

        .sub-events h3 {
            display: flex;
            align-items: center;
            gap: 0.55rem;
        }

        .sub-event-card {
            background: rgba(255, 255, 255, 0.065);
        }

        .no-events {
            border-radius: 8px;
        }

        @media (max-width: 768px) {
            .container {
                padding: 5.5rem 1rem 2rem;
            }

            .header-section {
                min-height: 520px;
                padding: 1.4rem;
                align-items: flex-end;
            }

            .hero-stats {
                grid-template-columns: 1fr;
            }

            .events-heading {
                align-items: flex-start;
                flex-direction: column;
            }

            .hero-btn {
                width: 100%;
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
                <a href="${pageContext.request.contextPath}/" class="nav-link active">
                    <i class="fas fa-home"></i> Home
                </a>
                <a href="${pageContext.request.contextPath}/documentation.jsp" class="nav-link">
                    <i class="fas fa-info-circle"></i> About
                </a>
                <a href="${pageContext.request.contextPath}/myEvents" class="nav-link">
                    <i class="fas fa-ticket-alt"></i> My Events
                </a>
                <c:choose>
                    <c:when test="${not empty sessionScope.authEmail}">
                        <c:if test="${sessionScope.authRole == 'ADMIN'}">
                            <a href="${pageContext.request.contextPath}/admin" class="nav-link">
                                <i class="fas fa-user-shield"></i> Admin
                            </a>
                        </c:if>
                        <a href="${pageContext.request.contextPath}/logout" class="nav-link">
                            <i class="fas fa-sign-out-alt"></i> Logout
                        </a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/login" class="nav-link">
                            <i class="fas fa-sign-in-alt"></i> Sign In
                        </a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="header-section">
            <div class="hero-content">
                <p class="eyebrow"><i class="fas fa-star"></i> Book your next experience</p>
                <h1>Find events worth showing up for.</h1>
                <p class="hero-copy">
                    Explore upcoming events, reserve your spot in seconds, and keep your booking details ready for check-in.
                </p>
                <div class="hero-actions">
                    <a href="#available-events" class="hero-btn">
                        <i class="fas fa-ticket-alt"></i> Browse Events
                    </a>
                    <a href="${pageContext.request.contextPath}/myEvents" class="hero-btn secondary">
                        <i class="fas fa-receipt"></i> View My Bookings
                    </a>
                </div>
                <div class="hero-stats">
                    <div class="hero-stat">
                        <strong>${fn:length(events)}</strong>
                        <span>Available events</span>
                    </div>
                    <div class="hero-stat">
                        <strong>Instant</strong>
                        <span>Booking confirmation</span>
                    </div>
                    <div class="hero-stat">
                        <strong>Digital</strong>
                        <span>Event ID after booking</span>
                    </div>
                </div>
            </div>
        </div>
        
        <c:if test="${not empty successMessage}">
            <div class="alert success">
                <i class="fas fa-check-circle"></i> ${successMessage}
            </div>
        </c:if>
        
        <c:if test="${not empty errorMessage}">
            <div class="alert error">
                <i class="fas fa-exclamation-circle"></i> ${errorMessage}
            </div>
        </c:if>

        <div class="events-heading" id="available-events">
            <div>
                <h2>Available Events</h2>
                <p>Pick an event, add your details, and reserve your seat.</p>
            </div>
            <div class="event-count">${fn:length(events)} listed</div>
        </div>

        <div class="events-list">
            <c:forEach var="event" items="${events}">
                <div class="event-card">
                    <c:if test="${not empty event.imagePath}">
                        <img src="${pageContext.request.contextPath}${event.imagePath}" alt="${event.name}" class="event-image">
                    </c:if>
                    <div class="event-kind">
                        <c:choose>
                            <c:when test="${event.majorEvent}">
                                <i class="fas fa-layer-group"></i> Major Event
                            </c:when>
                            <c:otherwise>
                                <i class="fas fa-calendar-day"></i> Simple Event
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <h2>${event.name}</h2>
                    <p class="date">
                        <i class="far fa-calendar-alt"></i>
                        Date: ${event.date}
                    </p>
                    <p class="location">
                        <i class="fas fa-map-marker-alt"></i>
                        Location: ${event.location}
                    </p>
                    <p class="description">${event.description}</p>
                    <p class="guests">
                        <i class="fas fa-users"></i>
                        Available Spots: ${event.availableSpots}
                    </p>

                    <c:if test="${not empty event.bookingStatus}">
                        <div class="booking-status">
                            <i class="fas fa-check-circle"></i> ${event.bookingStatus}
                        </div>
                    </c:if>
                    
                    <c:if test="${event.canBook}">
                        <form method="post" action="${pageContext.request.contextPath}/" class="booking-form">
                            <input type="hidden" name="event_id" value="${event.id}">
                            <div class="booking-form-title">
                                <i class="fas fa-pen"></i>
                                <c:choose>
                                    <c:when test="${event.bookingStatus == 'Upgrade Available'}">Upgrade to major event pass</c:when>
                                    <c:otherwise>Reserve your spot</c:otherwise>
                                </c:choose>
                            </div>
                            <div class="form-group">
                                <input type="text" name="name" placeholder="Your Name" value="${sessionScope.authName}" required>
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" placeholder="Your Email" value="${sessionScope.authEmail}" required>
                            </div>
                            <button type="submit" class="btn-primary">
                                <i class="fas fa-ticket-alt"></i>
                                <c:choose>
                                    <c:when test="${event.bookingStatus == 'Upgrade Available'}">Upgrade Pass</c:when>
                                    <c:otherwise>Book Event</c:otherwise>
                                </c:choose>
                            </button>
                        </form>
                    </c:if>
                    <c:if test="${not event.canBook and empty event.bookingStatus}">
                        <p class="fully-booked">
                            <i class="fas fa-exclamation-circle"></i> The event is Housefull you can explore other events
                        </p>
                    </c:if>

                    <c:if test="${event.majorEvent}">
                        <div class="sub-events">
                            <h3><i class="fas fa-stream"></i> Sub Events</h3>
                            <c:forEach var="subEvent" items="${event.subEvents}">
                                <div class="sub-event-card">
                                    <c:if test="${not empty subEvent.imagePath}">
                                        <img src="${pageContext.request.contextPath}${subEvent.imagePath}" alt="${subEvent.name}" class="event-image">
                                    </c:if>
                                    <h4>${subEvent.name}</h4>
                                    <p class="date">
                                        <i class="far fa-calendar-alt"></i>
                                        Date: ${subEvent.date}
                                    </p>
                                    <p class="location">
                                        <i class="fas fa-map-marker-alt"></i>
                                        Location: ${subEvent.location}
                                    </p>
                                    <p class="description">${subEvent.description}</p>
                                    <p class="guests">
                                        <i class="fas fa-users"></i>
                                        Available Spots: ${subEvent.availableSpots}
                                    </p>

                                    <c:if test="${not empty subEvent.bookingStatus}">
                                        <div class="booking-status">
                                            <i class="fas fa-check-circle"></i> ${subEvent.bookingStatus}
                                        </div>
                                    </c:if>

                                    <c:if test="${subEvent.canBook}">
                                        <form method="post" action="${pageContext.request.contextPath}/" class="booking-form">
                                            <input type="hidden" name="event_id" value="${subEvent.id}">
                                            <div class="booking-form-title">
                                                <i class="fas fa-pen"></i> Reserve this sub event
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="name" placeholder="Your Name" value="${sessionScope.authName}" required>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" name="email" placeholder="Your Email" value="${sessionScope.authEmail}" required>
                                            </div>
                                            <button type="submit" class="btn-primary">
                                                <i class="fas fa-ticket-alt"></i> Book Sub Event
                                            </button>
                                        </form>
                                    </c:if>
                                    <c:if test="${not subEvent.canBook and empty subEvent.bookingStatus}">
                                        <p class="fully-booked">
                                            <i class="fas fa-exclamation-circle"></i> The event is Housefull you can explore other events
                                        </p>
                                    </c:if>
                                </div>
                            </c:forEach>
                        </div>
                    </c:if>
                </div>
            </c:forEach>
            
            <c:if test="${empty events}">
                <p class="no-events">
                    <i class="fas fa-calendar-times"></i><br>
                    No events available at the moment.
                </p>
            </c:if>
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
