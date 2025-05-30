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

        /* Navigation Bar */
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

        .nav-logo i {
            color: var(--primary-color);
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

        /* Hero Section */
        .hero-section {
            position: relative;
            min-height: 100vh;
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
            background: linear-gradient(135deg, rgba(15, 23, 42, 0.9) 0%, rgba(30, 41, 59, 0.8) 100%);
            z-index: 1;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
            padding: 3rem;
            background: rgba(15, 23, 42, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            border: 1px solid var(--border-color);
            box-shadow: var(--card-shadow);
        }

        .hero-title {
            font-size: 4.5rem;
            font-weight: 800;
            margin-bottom: 1.5rem;
            background: linear-gradient(to right, var(--text-primary), var(--text-secondary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            margin-bottom: 2.5rem;
            color: var(--text-secondary);
            animation: fadeInUp 1s ease-out 0.2s;
            opacity: 0;
            animation-fill-mode: forwards;
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
            background: linear-gradient(135deg, #1a365d 0%, #0f2942 100%);
            padding: 5rem 0;
            margin: 2rem 0;
            border-radius: 15px;
            border: 1px solid var(--border-color);
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
            width: 80px;
            height: 4px;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            border-radius: 2px;
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
            background: rgba(15, 23, 42, 0.95);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: var(--card-shadow);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
            color: var(--text-primary);
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
        }

        .feature-card:hover {
            transform: var(--hover-transform);
            border-color: var(--border-color);
            box-shadow: 0 20px 40px -10px rgba(0, 0, 0, 0.4);
        }

        .feature-card i {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 1.5rem;
            transition: transform 0.4s ease;
            animation: float 3s ease-in-out infinite;
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

        /* Services Section */
        .services-section {
            padding: 5rem 0;
            background: linear-gradient(135deg, #1a365d 0%, #0f2942 100%);
            margin: 2rem 0;
            border-radius: 15px;
            border: 1px solid var(--border-color);
        }

        .swiper {
            width: 100%;
            padding-top: 50px;
            padding-bottom: 50px;
        }

        .swiper-slide {
            background-position: center;
            background-size: cover;
            width: 300px;
            height: 400px;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: var(--card-shadow);
            position: relative;
        }

        .swiper-slide::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0.2) 100%);
            z-index: 1;
        }

        .swiper-slide img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .slide-content {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 2rem;
            color: var(--text-primary);
            z-index: 2;
        }

        .slide-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .slide-description {
            font-size: 1rem;
            color: var(--text-secondary);
            margin-bottom: 1rem;
        }

        .slide-button {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: var(--text-primary);
            text-decoration: none;
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .slide-button:hover {
            transform: var(--hover-transform);
            box-shadow: var(--card-shadow);
        }

        .swiper-button-next,
        .swiper-button-prev {
            color: var(--primary-color) !important;
        }

        .swiper-pagination-bullet {
            background: var(--primary-color) !important;
        }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }

        /* Footer */
        footer {
            background: linear-gradient(165deg, #1a365d 0%, #0f2942 100%);
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
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
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
            background: rgba(96, 165, 250, 0.15);
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
                font-size: 2.5rem;
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
    <!-- Add Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
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

    <!-- Services Section -->
    <section class="services-section">
        <div class="container">
            <h2 class="section-title">Our Services</h2>
            <p class="section-subtitle">Explore our range of event management services</p>
            
            <!-- Swiper -->
            <div class="swiper">
                <div class="swiper-wrapper">
                    <!-- Event 1 -->
                    <div class="swiper-slide">
                        <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Corporate Events">
                        <div class="slide-content">
                            <h3 class="slide-title">Corporate Events</h3>
                            <p class="slide-description">Professional event management for your business needs</p>
                            <a href="#" class="slide-button">Learn More</a>
                        </div>
                    </div>
                    
                    <!-- Event 2 -->
                    <div class="swiper-slide">
                        <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Wedding Planning">
                        <div class="slide-content">
                            <h3 class="slide-title">Wedding Planning</h3>
                            <p class="slide-description">Make your special day unforgettable</p>
                            <a href="#" class="slide-button">Learn More</a>
                        </div>
                    </div>
                    
                    <!-- Event 3 -->
                    <div class="swiper-slide">
                        <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Conferences">
                        <div class="slide-content">
                            <h3 class="slide-title">Conferences</h3>
                            <p class="slide-description">Professional conference management services</p>
                            <a href="#" class="slide-button">Learn More</a>
                        </div>
                    </div>
                    
                    <!-- Event 4 -->
                    <div class="swiper-slide">
                        <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Social Gatherings">
                        <div class="slide-content">
                            <h3 class="slide-title">Social Gatherings</h3>
                            <p class="slide-description">Perfect planning for your social events</p>
                            <a href="#" class="slide-button">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </section>

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
            <p class="section-subtitle" style="color: #ffffff; font-size: 1.2rem; text-shadow: 1px 1px 2px rgba(0,0,0,0.5);">
                A Solo Developer Initiative for Advanced Event Management
            </p>
            
            <div class="about-content" style="background: rgba(15, 23, 42, 0.95); padding: 2rem; border-radius: 15px; border: 1px solid var(--border-color);">
                <div class="mission-vision">
                    <div class="about-card" style="margin-bottom: 2rem;">
                        <h3 style="color: var(--primary-color); font-size: 1.5rem; margin-bottom: 1rem;">
                            <i class="fas fa-bullseye"></i> Project Mission
                        </h3>
                        <p style="color: #ffffff; line-height: 1.8; font-size: 1.1rem;">
                            To revolutionize event management through innovative technology, making it accessible and efficient for everyone.
                        </p>
                    </div>
                    
                    <div class="about-card">
                        <h3 style="color: var(--primary-color); font-size: 1.5rem; margin-bottom: 1rem;">
                            <i class="fas fa-eye"></i> Development Vision
                        </h3>
                        <p style="color: #ffffff; line-height: 1.8; font-size: 1.1rem;">
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
                            <h4 style="color: #ffffff; font-size: 1.3rem; margin-bottom: 0.5rem;">Full Stack Developer</h4>
                            <p style="color: #e2e8f0; line-height: 1.6;">
                                Specialized in Java, Spring Framework, and modern web technologies. Passionate about creating efficient and scalable solutions.
                            </p>
                            <div class="developer-skills" style="margin-top: 1rem;">
                                <span style="background: rgba(59, 130, 246, 0.2); color: #ffffff; padding: 0.3rem 0.8rem; border-radius: 15px; margin-right: 0.5rem; font-size: 0.9rem;">Java</span>
                                <span style="background: rgba(59, 130, 246, 0.2); color: #ffffff; padding: 0.3rem 0.8rem; border-radius: 15px; margin-right: 0.5rem; font-size: 0.9rem;">Spring</span>
                                <span style="background: rgba(59, 130, 246, 0.2); color: #ffffff; padding: 0.3rem 0.8rem; border-radius: 15px; margin-right: 0.5rem; font-size: 0.9rem;">MySQL</span>
                                <span style="background: rgba(59, 130, 246, 0.2); color: #ffffff; padding: 0.3rem 0.8rem; border-radius: 15px; font-size: 0.9rem;">Web Dev</span>
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
    <section class="contact-section" style="background: rgba(15, 23, 42, 0.95); padding: 4rem 0; margin-top: 4rem;">
        <div class="container">
            <h2 class="section-title">Contact</h2>
            <p class="section-subtitle" style="color: #ffffff; margin-bottom: 3rem;">Get in touch for support or collaboration</p>
            
            <div class="contact-grid" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem;">
                <div class="contact-info">
                    <div class="contact-card" style="background: rgba(30, 41, 59, 0.5); padding: 2rem; border-radius: 15px; border: 1px solid var(--border-color);">
                        <h3 style="color: var(--primary-color); margin-bottom: 1.5rem; font-size: 1.3rem;">
                            <i class="fas fa-envelope"></i> Email
                        </h3>
                        <a href="mailto:developer@eventmanagement.com" style="color: #ffffff; text-decoration: none; font-size: 1.1rem; display: flex; align-items: center; gap: 0.5rem;">
                            developer@eventmanagement.com
                        </a>
                    </div>
                    
                    <div class="contact-card" style="background: rgba(30, 41, 59, 0.5); padding: 2rem; border-radius: 15px; border: 1px solid var(--border-color); margin-top: 1rem;">
                        <h3 style="color: var(--primary-color); margin-bottom: 1.5rem; font-size: 1.3rem;">
                            <i class="fas fa-code-branch"></i> GitHub
                        </h3>
                        <a href="https://github.com/yourusername" target="_blank" style="color: #ffffff; text-decoration: none; font-size: 1.1rem; display: flex; align-items: center; gap: 0.5rem;">
                            <i class="fab fa-github"></i> View Project Repository
                        </a>
                    </div>
                </div>
                
                <div class="contact-form" style="background: rgba(30, 41, 59, 0.5); padding: 2rem; border-radius: 15px; border: 1px solid var(--border-color);">
                    <h3 style="color: var(--primary-color); margin-bottom: 1.5rem; font-size: 1.3rem;">Send Message</h3>
                    <form action="${pageContext.request.contextPath}/contact" method="POST" style="display: grid; gap: 1rem;">
                        <input type="text" name="name" placeholder="Your Name" required 
                               style="background: rgba(15, 23, 42, 0.95); border: 1px solid var(--border-color); color: #ffffff; padding: 0.8rem; border-radius: 8px;">
                        <input type="email" name="email" placeholder="Your Email" required 
                               style="background: rgba(15, 23, 42, 0.95); border: 1px solid var(--border-color); color: #ffffff; padding: 0.8rem; border-radius: 8px;">
                        <textarea name="message" placeholder="Your Message" required rows="4" 
                                  style="background: rgba(15, 23, 42, 0.95); border: 1px solid var(--border-color); color: #ffffff; padding: 0.8rem; border-radius: 8px; resize: vertical;"></textarea>
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

<!-- Add Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script>
    const swiper = new Swiper('.swiper', {
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: 'auto',
        coverflowEffect: {
            rotate: 50,
            stretch: 0,
            depth: 100,
            modifier: 1,
            slideShadows: true,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
    });
</script>
</body>
</html>