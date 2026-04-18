<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
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
        }

        /* Navigation Bar */
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

        .nav-logo i {
            color: var(--accent-teal);
            font-size: 1.5rem;
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
            background: rgba(255, 255, 255, 0.07);
            border: 1px solid rgba(255, 255, 255, 0.14);
        }

        .nav-link:hover {
            background: rgba(45, 212, 191, 0.14);
            border-color: rgba(45, 212, 191, 0.45);
            transform: var(--hover-transform);
            box-shadow: 0 14px 30px rgba(45, 212, 191, 0.12);
        }

        .admin-link {
            background: linear-gradient(135deg, rgba(251, 191, 36, 0.28), rgba(45, 212, 191, 0.18));
            border-color: rgba(251, 191, 36, 0.35);
        }

        /* Hero Section */
        .hero-section {
            position: relative;
            min-height: 92vh;
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 2rem;
            overflow: hidden;
        }

        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background:
                linear-gradient(90deg, rgba(5, 6, 8, 0.95) 0%, rgba(5, 6, 8, 0.72) 42%, rgba(5, 6, 8, 0.88) 100%),
                linear-gradient(135deg, rgba(45, 212, 191, 0.24), transparent 38%),
                linear-gradient(315deg, rgba(251, 191, 36, 0.18), transparent 42%);
            z-index: 1;
        }

        .hero-section::after {
            content: '';
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            height: 160px;
            background: linear-gradient(to bottom, transparent, var(--background-color));
            z-index: 1;
            pointer-events: none;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 960px;
            padding: 5rem 2rem 3rem;
            background: transparent;
            border: 0;
            box-shadow: none;
        }

        .hero-title {
            font-size: 6rem;
            font-weight: 800;
            line-height: 0.95;
            margin: 0 0 1.5rem;
            background: linear-gradient(90deg, #ffffff 0%, var(--accent-teal) 36%, var(--accent-gold) 72%, #f5f5f5 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            filter: drop-shadow(0 18px 40px rgba(0, 0, 0, 0.55));
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.45rem;
            margin-bottom: 2.5rem;
            color: #f4f4f5;
            text-shadow: 0 8px 24px rgba(0,0,0,0.7);
            max-width: 760px;
            margin-left: auto;
            margin-right: auto;
            animation: fadeInUp 1s ease-out 0.2s;
            opacity: 0;
            animation-fill-mode: forwards;
        }

        .btn {
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }

        .primary-btn {
            background: linear-gradient(135deg, var(--accent-teal), var(--accent-green));
            color: #04110e;
            box-shadow: 0 14px 34px rgba(45, 212, 191, 0.24);
        }

        .primary-btn:hover {
            background: linear-gradient(135deg, #5eead4, #86efac);
            box-shadow: 0 18px 44px rgba(34, 197, 94, 0.28);
        }

        .secondary-btn {
            background: rgba(255, 255, 255, 0.1);
            color: var(--text-primary);
            border-color: rgba(251, 191, 36, 0.42);
        }

        .secondary-btn:hover {
            background: rgba(251, 191, 36, 0.15);
            border-color: rgba(251, 191, 36, 0.72);
        }

        .hero-cta {
            display: flex;
            gap: 1rem;
            justify-content: center;
            animation: fadeInUp 1s ease-out 0.4s;
            opacity: 0;
            animation-fill-mode: forwards;
        }

        /* Features Section */
        .features-section {
            background:
                linear-gradient(135deg, rgba(45, 212, 191, 0.08), transparent 35%),
                linear-gradient(225deg, rgba(251, 191, 36, 0.08), transparent 38%),
                linear-gradient(135deg, #181a1f 0%, #090a0d 100%);
            padding: 5rem 0;
            margin: 2rem 0;
            border-radius: 15px;
            border: 1px solid rgba(255, 255, 255, 0.16);
            box-shadow: 0 22px 60px rgba(0, 0, 0, 0.34);
        }

        .section-title {
            text-align: center;
            font-size: 3rem;
            margin-bottom: 1.5rem;
            color: var(--text-primary);
            font-weight: 800;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            position: relative;
            padding-bottom: 1rem;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 110px;
            height: 4px;
            background: linear-gradient(to right, var(--accent-teal), var(--accent-gold), var(--accent-green));
            border-radius: 2px;
            box-shadow: 0 0 24px rgba(45, 212, 191, 0.35);
        }

        .section-subtitle {
            text-align: center;
            color: var(--text-secondary);
            margin-bottom: 3rem;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            padding: 2rem;
        }

        .feature-card {
            background: linear-gradient(145deg, rgba(20, 23, 28, 0.98), rgba(7, 8, 10, 0.96));
            padding: 2.5rem;
            border-radius: 8px;
            box-shadow: var(--card-shadow);
            border: 1px solid rgba(255, 255, 255, 0.14);
            backdrop-filter: blur(10px);
            color: var(--text-primary);
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, var(--accent-teal), var(--accent-gold));
        }

        .feature-card:nth-child(2)::before,
        .feature-card:nth-child(5)::before {
            background: linear-gradient(90deg, var(--accent-green), var(--accent-teal));
        }

        .feature-card:nth-child(3)::before,
        .feature-card:nth-child(6)::before {
            background: linear-gradient(90deg, var(--accent-gold), var(--accent-coral));
        }

        .feature-card:hover {
            transform: translateY(-8px);
            border-color: rgba(255, 255, 255, 0.32);
            box-shadow: 0 24px 54px -14px rgba(45, 212, 191, 0.28);
        }

        .feature-card i {
            font-size: 3rem;
            color: var(--accent-teal);
            margin-bottom: 1.5rem;
            transition: transform 0.4s ease;
            animation: float 3s ease-in-out infinite;
        }

        .feature-card:nth-child(2) i,
        .feature-card:nth-child(5) i {
            color: var(--accent-green);
        }

        .feature-card:nth-child(3) i,
        .feature-card:nth-child(6) i {
            color: var(--accent-gold);
        }

        .feature-card h3 {
            color: var(--text-primary);
            font-size: 1.5rem;
            margin-bottom: 1rem;
            font-weight: 600;
        }

        .feature-card p {
            color: var(--text-secondary);
        }

        .how-it-works-section,
        .benefits-section,
        .internship-section {
            background:
                linear-gradient(135deg, rgba(255,255,255,0.06), transparent),
                linear-gradient(135deg, rgba(12, 14, 18, 0.98), rgba(21, 24, 30, 0.96));
            border: 1px solid rgba(255, 255, 255, 0.14);
            border-radius: 8px;
            margin: 2rem 0;
            padding: 5rem 0;
            box-shadow: 0 20px 54px rgba(0,0,0,0.28);
        }

        .steps-container,
        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 1.5rem;
        }

        .step,
        .benefit-card {
            position: relative;
            padding: 2rem;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.055);
            border: 1px solid rgba(255,255,255,0.12);
            box-shadow: 0 16px 36px rgba(0,0,0,0.22);
            overflow: hidden;
        }

        .step::before,
        .benefit-card::before {
            content: '';
            position: absolute;
            inset: 0 0 auto 0;
            height: 3px;
            background: linear-gradient(90deg, var(--accent-teal), var(--accent-gold), var(--accent-green));
        }

        .step-number {
            width: 46px;
            height: 46px;
            display: grid;
            place-items: center;
            border-radius: 8px;
            background: linear-gradient(135deg, var(--accent-teal), var(--accent-green));
            color: #05100d;
            font-weight: 800;
            box-shadow: 0 10px 22px rgba(45, 212, 191, 0.24);
        }

        .step-icon {
            color: var(--accent-gold);
            font-size: 2rem;
            margin: 1.5rem 0 0.5rem;
        }

        .benefit-card h3 i {
            color: var(--accent-teal);
        }

        .benefit-card li {
            margin-bottom: 0.7rem;
            color: var(--text-secondary);
        }

        /* Footer */
        footer {
            background:
                linear-gradient(165deg, rgba(45, 212, 191, 0.08), transparent 36%),
                linear-gradient(25deg, rgba(251, 191, 36, 0.08), transparent 34%),
                linear-gradient(165deg, #181a1f 0%, #090a0d 100%);
            padding: 6rem 0 2rem;
            margin-top: 6rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            position: relative;
            overflow: hidden;
        }

        footer::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, var(--accent-teal), var(--accent-gold), var(--accent-green));
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 4rem;
            margin-bottom: 4rem;
            position: relative;
        }

        .footer-section h4 {
            color: var(--text-primary);
            font-size: 1.4rem;
            margin-bottom: 2rem;
            position: relative;
            padding-bottom: 1rem;
            font-weight: 600;
        }

        .footer-section h4::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 60px;
            height: 3px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
            border-radius: 3px;
        }

        .footer-section ul li {
            margin-bottom: 1.2rem;
        }

        .footer-section ul li a {
            color: var(--text-secondary);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.8rem;
            transition: all 0.3s ease;
            padding: 0.5rem 1rem;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.03);
        }

        .footer-section ul li a:hover {
            color: var(--primary-color);
            transform: translateX(8px);
            background: rgba(255, 255, 255, 0.08);
        }

        .footer-section ul li a i {
            width: 24px;
            height: 24px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: rgba(180, 185, 192, 0.14);
            border-radius: 6px;
            color: var(--primary-color);
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .social-links {
            display: flex;
            gap: 1.2rem;
            margin-top: 2rem;
        }

        .social-link {
            color: var(--text-secondary);
            font-size: 1.5rem;
            width: 45px;
            height: 45px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 12px;
            transition: all 0.3s ease;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .social-link:hover {
            color: var(--primary-color);
            transform: translateY(-5px);
            background: rgba(255, 255, 255, 0.1);
            border-color: var(--primary-color);
        }

        .newsletter-signup {
            margin-top: 2.5rem;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 16px;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .newsletter-signup h5 {
            color: var(--text-primary);
            font-size: 1.2rem;
            margin-bottom: 1rem;
            font-weight: 500;
        }

        .newsletter-form .form-group {
            display: flex;
            gap: 0.8rem;
        }

        .newsletter-form input {
            flex: 1;
            padding: 0.8rem 1.2rem;
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            background: rgba(255, 255, 255, 0.05);
            color: var(--text-primary);
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .newsletter-form input:focus {
            outline: none;
            border-color: var(--primary-color);
            background: rgba(255, 255, 255, 0.08);
        }

        .newsletter-form button {
            padding: 0.8rem 1.2rem;
            border-radius: 10px;
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
        }

        .footer-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-top: 2.5rem;
            margin-top: 2.5rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }

        .footer-bottom p {
            color: var(--text-secondary);
            font-size: 1rem;
        }

        .footer-meta {
            display: flex;
            gap: 2rem;
            align-items: center;
        }

        .footer-meta a {
            color: var(--text-secondary);
            text-decoration: none;
            font-size: 0.95rem;
            transition: all 0.3s ease;
        }

        .footer-meta a:hover {
            color: var(--primary-color);
        }

        .footer-meta .separator {
            color: rgba(255, 255, 255, 0.2);
        }

        @media (max-width: 768px) {
            .nav-container {
                flex-direction: column;
                gap: 1rem;
                padding: 1rem;
            }

            .nav-links {
                flex-direction: column;
                width: 100%;
            }

            .nav-link {
                width: 100%;
                text-align: center;
            }

            .hero-title {
                font-size: 3rem;
            }
            
            .hero-subtitle {
                font-size: 1.2rem;
            }

            .hero-cta {
                flex-direction: column;
            }

            .features-grid {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 2rem;
            }

            .container {
                padding: 1rem;
            }

            .footer-bottom {
                flex-direction: column;
                gap: 1rem;
                text-align: center;
            }

            .newsletter-form .form-group {
                flex-direction: column;
            }

            .newsletter-form button {
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
            <div class="nav-links">
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

    <!-- Hero Section -->
    <div class="hero-section" style="background-image: url('${pageContext.request.contextPath}/images/eventbg0.jpg')">
        <div class="hero-content">
            <h1 class="hero-title">Plan. Manage. Succeed.</h1>
            <p class="hero-subtitle">A powerful, all-in-one Event Management System for organizers and participants</p>
            <div class="hero-cta">
                <a href="${pageContext.request.contextPath}/user" class="btn primary-btn">
                    <i class="fas fa-rocket"></i> Get Started
                </a>
                <a href="#features" class="btn secondary-btn">
                    <i class="fas fa-play-circle"></i> View Features
                </a>
            </div>
        </div>
    </div>

    <!-- Features Section -->
    <section id="features" class="features-section">
        <div class="container">
            <h2 class="section-title">Powerful Features</h2>
            <p class="section-subtitle">Everything you need to manage successful events</p>
            
            <div class="features-grid">
                <div class="feature-card">
                    <i class="fas fa-calendar-plus"></i>
                    <h3>Easy Event Creation</h3>
                    <p>Create and customize events in minutes with our intuitive interface</p>
                </div>
                <div class="feature-card">
                    <i class="fas fa-chart-line"></i>
                    <h3>Real-Time Tracking</h3>
                    <p>Monitor registrations and attendance in real-time</p>
                </div>
                <div class="feature-card">
                    <i class="fas fa-user-lock"></i>
                    <h3>Role-Based Access</h3>
                    <p>Secure and flexible access control for different user types</p>
                </div>
                <div class="feature-card">
                    <i class="fas fa-shield-alt"></i>
                    <h3>Secure Authentication</h3>
                    <p>Enterprise-grade security for your events and data</p>
                </div>
                <div class="feature-card">
                    <i class="fas fa-chart-bar"></i>
                    <h3>Analytics & Reporting</h3>
                    <p>Comprehensive insights and detailed event reports</p>
                </div>
                <div class="feature-card">
                    <i class="fas fa-mobile-alt"></i>
                    <h3>Responsive Design</h3>
                    <p>Perfect experience on any device</p>
                </div>
            </div>
        </div>
    </section>

    <!-- How It Works Section -->
    <section class="how-it-works-section">
        <div class="container">
            <h2 class="section-title">How It Works</h2>
            <div class="steps-container">
                <div class="step">
                    <div class="step-number">1</div>
                    <i class="fas fa-edit step-icon"></i>
                    <h3>Create Event</h3>
                    <p>Set up your event with all the details in minutes</p>
                </div>
                <div class="step">
                    <div class="step-number">2</div>
                    <i class="fas fa-user-plus step-icon"></i>
                    <h3>Invite & Register</h3>
                    <p>Manage registrations and send invitations</p>
                </div>
                <div class="step">
                    <div class="step-number">3</div>
                    <i class="fas fa-chart-pie step-icon"></i>
                    <h3>Track & Optimize</h3>
                    <p>Monitor success and improve future events</p>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section with improved contrast -->
    <section class="about-section">
        <div class="container">
            <h2 class="section-title">About The Project</h2>
            <p class="section-subtitle" style="color: #f4f4f5; font-size: 1.2rem; text-shadow: 1px 1px 2px rgba(0,0,0,0.5);">
                A Solo Developer Initiative for Advanced Event Management
            </p>
            
            <div class="about-content" style="background: rgba(8, 9, 11, 0.96); padding: 2rem; border-radius: 15px; border: 1px solid var(--border-color);">
                <div class="mission-vision">
                    <div class="about-card" style="margin-bottom: 2rem;">
                        <h3 style="color: var(--primary-color); font-size: 1.5rem; margin-bottom: 1rem;">
                            <i class="fas fa-bullseye"></i> Project Mission
                        </h3>
                        <p style="color: #f4f4f5; line-height: 1.8; font-size: 1.1rem;">
                            To revolutionize event management through innovative technology, making it accessible and efficient for everyone.
                        </p>
                    </div>
                    
                    <div class="about-card">
                        <h3 style="color: var(--primary-color); font-size: 1.5rem; margin-bottom: 1rem;">
                            <i class="fas fa-eye"></i> Development Vision
                        </h3>
                        <p style="color: #f4f4f5; line-height: 1.8; font-size: 1.1rem;">
                            Creating a robust, scalable, and user-friendly platform that sets new standards in event management solutions.
                        </p>
                    </div>
                </div>
                
                <div class="developer-section" style="margin-top: 3rem; padding-top: 2rem; border-top: 1px solid var(--border-color);">
                    <h3 style="color: var(--primary-color); font-size: 1.5rem; margin-bottom: 1.5rem;">
                        <i class="fas fa-code"></i> About the Developer
                    </h3>
                    <div class="developer-info" style="display: flex; align-items: center; gap: 2rem;">
                        <div class="developer-image" style="flex-shrink: 0;">
                            <img src="${pageContext.request.contextPath}/images/developer.jpg" 
                                 alt="Developer Profile" 
                                 style="width: 120px; height: 120px; border-radius: 60px; object-fit: cover; 
                                        border: 3px solid var(--primary-color); 
                                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);">
                        </div>
                        <div class="developer-details">
                            <h4 style="color: #f4f4f5; font-size: 1.3rem; margin-bottom: 0.5rem;">Full Stack Developer</h4>
                            <p style="color: #d4d4d8; line-height: 1.6;">
                                Specialized in Java, Spring Framework, and modern web technologies. Passionate about creating efficient and scalable solutions.
                            </p>
                            <div class="developer-skills" style="margin-top: 1rem;">
                                <span style="background: rgba(170, 175, 184, 0.18); color: #f4f4f5; padding: 0.3rem 0.8rem; border-radius: 15px; margin-right: 0.5rem; font-size: 0.9rem;">Java</span>
                                <span style="background: rgba(170, 175, 184, 0.18); color: #f4f4f5; padding: 0.3rem 0.8rem; border-radius: 15px; margin-right: 0.5rem; font-size: 0.9rem;">Spring</span>
                                <span style="background: rgba(170, 175, 184, 0.18); color: #f4f4f5; padding: 0.3rem 0.8rem; border-radius: 15px; margin-right: 0.5rem; font-size: 0.9rem;">MySQL</span>
                                <span style="background: rgba(170, 175, 184, 0.18); color: #f4f4f5; padding: 0.3rem 0.8rem; border-radius: 15px; font-size: 0.9rem;">Web Dev</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Benefits Section -->
    <section class="benefits-section">
        <div class="container">
            <h2 class="section-title">Benefits</h2>
            <div class="benefits-grid">
                <div class="benefit-card">
                    <h3><i class="fas fa-users"></i> For Organizers</h3>
                    <ul>
                        <li>Streamlined event creation</li>
                        <li>Automated registration</li>
                        <li>Real-time analytics</li>
                    </ul>
                </div>
                <div class="benefit-card">
                    <h3><i class="fas fa-ticket-alt"></i> For Participants</h3>
                    <ul>
                        <li>Easy registration process</li>
                        <li>Event recommendations</li>
                        <li>Mobile access</li>
                    </ul>
                </div>
                <div class="benefit-card">
                    <h3><i class="fas fa-user-shield"></i> For Admins</h3>
                    <ul>
                        <li>Complete control</li>
                        <li>Security management</li>
                        <li>System insights</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Internship Section -->
    <section class="internship-section">
        <div class="container">
            <h2 class="section-title">Join Our Team</h2>
            <p class="section-subtitle">Explore exciting internship opportunities</p>
            <a href="https://credora.space" target="_blank" class="btn primary-btn">
                <i class="fas fa-graduation-cap"></i> View Opportunities
            </a>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact-section" style="background: rgba(8, 9, 11, 0.96); padding: 4rem 0; margin-top: 4rem;">
        <div class="container">
            <h2 class="section-title">Contact</h2>
            <p class="section-subtitle" style="color: #f4f4f5; margin-bottom: 3rem;">Get in touch for support or collaboration</p>
            
            <div class="contact-grid" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem;">
                <div class="contact-info">
                    <div class="contact-card" style="background: rgba(24, 26, 31, 0.58); padding: 2rem; border-radius: 15px; border: 1px solid var(--border-color);">
                        <h3 style="color: var(--primary-color); margin-bottom: 1.5rem; font-size: 1.3rem;">
                            <i class="fas fa-envelope"></i> Email
                        </h3>
                        <a href="mailto:developer@eventmanagement.com" style="color: #f4f4f5; text-decoration: none; font-size: 1.1rem; display: flex; align-items: center; gap: 0.5rem;">
                            developer@eventmanagement.com
                        </a>
                    </div>
                    
                    <div class="contact-card" style="background: rgba(24, 26, 31, 0.58); padding: 2rem; border-radius: 15px; border: 1px solid var(--border-color); margin-top: 1rem;">
                        <h3 style="color: var(--primary-color); margin-bottom: 1.5rem; font-size: 1.3rem;">
                            <i class="fas fa-code-branch"></i> GitHub
                        </h3>
                        <a href="https://github.com/yourusername" target="_blank" style="color: #f4f4f5; text-decoration: none; font-size: 1.1rem; display: flex; align-items: center; gap: 0.5rem;">
                            <i class="fab fa-github"></i> View Project Repository
                        </a>
                    </div>
                </div>
                
                <div class="contact-form" style="background: rgba(24, 26, 31, 0.58); padding: 2rem; border-radius: 15px; border: 1px solid var(--border-color);">
                    <h3 style="color: var(--primary-color); margin-bottom: 1.5rem; font-size: 1.3rem;">Send Message</h3>
                    <form action="${pageContext.request.contextPath}/contact" method="POST" style="display: grid; gap: 1rem;">
                        <input type="text" name="name" placeholder="Your Name" required 
                               style="background: rgba(8, 9, 11, 0.96); border: 1px solid var(--border-color); color: #f4f4f5; padding: 0.8rem; border-radius: 8px;">
                        <input type="email" name="email" placeholder="Your Email" required 
                               style="background: rgba(8, 9, 11, 0.96); border: 1px solid var(--border-color); color: #f4f4f5; padding: 0.8rem; border-radius: 8px;">
                        <textarea name="message" placeholder="Your Message" required rows="4" 
                                  style="background: rgba(8, 9, 11, 0.96); border: 1px solid var(--border-color); color: #f4f4f5; padding: 0.8rem; border-radius: 8px; resize: vertical;"></textarea>
                        <button type="submit" class="btn primary-btn" style="width: 100%;">
                            <i class="fas fa-paper-plane"></i> Send Message
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer>
    <div class="container">
        <div class="footer-grid">
            <div class="footer-section">
                <h4>Documentation</h4>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/documentation.jsp#overview">
                        <i class="fas fa-book"></i> Project Overview
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/documentation.jsp#user-features">
                        <i class="fas fa-user"></i> User Features
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/documentation.jsp#event-management">
                        <i class="fas fa-calendar-alt"></i> Event Management
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/documentation.jsp#registration">
                        <i class="fas fa-ticket-alt"></i> Registration System
                    </a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Technical Resources</h4>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/documentation.jsp#technical">
                        <i class="fas fa-cogs"></i> System Details
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/documentation.jsp#security">
                        <i class="fas fa-shield-alt"></i> Security Features
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/documentation.jsp#admin-features">
                        <i class="fas fa-user-shield"></i> Admin Guide
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/changelog">
                        <i class="fas fa-history"></i> Changelog
                    </a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Support</h4>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/help">
                        <i class="fas fa-question-circle"></i> Help Center
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/contact">
                        <i class="fas fa-envelope"></i> Contact Support
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/terms">
                        <i class="fas fa-gavel"></i> Terms of Service
                    </a></li>
                    <li><a href="${pageContext.request.contextPath}/privacy">
                        <i class="fas fa-user-shield"></i> Privacy Policy
                    </a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Stay Connected</h4>
                <div class="social-links">
                    <a href="#" class="social-link" title="Facebook">
                        <i class="fab fa-facebook"></i>
                    </a>
                    <a href="#" class="social-link" title="Twitter">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-link" title="LinkedIn">
                        <i class="fab fa-linkedin"></i>
                    </a>
                    <a href="#" class="social-link" title="GitHub">
                        <i class="fab fa-github"></i>
                    </a>
                </div>
                <div class="newsletter-signup">
                    <h5>Subscribe to Updates</h5>
                    <form class="newsletter-form" action="${pageContext.request.contextPath}/subscribe" method="POST">
                        <div class="form-group">
                            <input type="email" name="email" placeholder="Enter your email" required>
                            <button type="submit" class="btn primary-btn">
                                <i class="fas fa-paper-plane"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 Event Management System. All rights reserved.</p>
            <div class="footer-meta">
                <a href="${pageContext.request.contextPath}/sitemap">Sitemap</a>
                <span class="separator">|</span>
                <a href="${pageContext.request.contextPath}/accessibility">Accessibility</a>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
