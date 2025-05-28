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

        /* Footer */
        footer {
            background: linear-gradient(135deg, #1a365d 0%, #0f2942 100%);
            padding: 4rem 0 2rem;
            margin-top: 4rem;
            border-top: 1px solid var(--border-color);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 3rem;
            margin-bottom: 3rem;
        }

        .footer-section h4 {
            color: var(--text-primary);
            font-size: 1.25rem;
            margin-bottom: 1.5rem;
            position: relative;
            padding-bottom: 0.75rem;
        }

        .footer-section h4::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 3px;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            border-radius: 2px;
        }

        .footer-section ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-section ul li {
            margin-bottom: 1rem;
        }

        .footer-section ul li a {
            color: var(--text-secondary);
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }

        .footer-section ul li a:hover {
            color: var(--primary-color);
            transform: translateX(5px);
        }

        .footer-section ul li a i {
            font-size: 0.875rem;
            color: var(--primary-color);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid var(--border-color);
            color: var(--text-secondary);
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .social-link {
            color: var(--text-secondary);
            font-size: 1.5rem;
            transition: all 0.3s ease;
        }

        .social-link:hover {
            color: var(--primary-color);
            transform: translateY(-3px);
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.75rem;
            padding: 1rem 2.5rem;
            border-radius: 12px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            cursor: pointer;
            border: none;
            font-size: 1.1rem;
            min-width: 140px;
            position: relative;
            overflow: hidden;
        }

        .primary-btn {
            background: linear-gradient(135deg, var(--gradient-start), var(--gradient-end));
            color: var(--text-primary);
            box-shadow: 0 4px 15px rgba(37, 99, 235, 0.3);
        }

        .primary-btn:hover {
            transform: var(--hover-transform);
            box-shadow: 0 8px 25px rgba(37, 99, 235, 0.4);
        }

        .secondary-btn {
            background: rgba(255, 255, 255, 0.1);
            color: var(--text-primary);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
        }

        .secondary-btn:hover {
            background: rgba(255, 255, 255, 0.15);
            border-color: var(--border-color);
            transform: var(--hover-transform);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes float {
            0% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-10px);
            }
            100% {
                transform: translateY(0px);
            }
        }

        /* Responsive Design */
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

    <!-- About Section -->
    <section class="about-section">
        <div class="container">
            <h2 class="section-title">About Us</h2>
            <p class="section-subtitle">Empowering event success through innovation</p>
            
            <div class="about-content">
                <div class="mission-vision">
                    <h3>Our Mission</h3>
                    <p>To simplify event management and create memorable experiences through technology</p>
                    
                    <h3>Our Vision</h3>
                    <p>To become the world's most trusted event management platform</p>
                </div>
                
                <div class="team-section">
                    <h3>Leadership Team</h3>
                    <div class="team-grid">
                        <div class="team-member">
                            <img src="${pageContext.request.contextPath}/images/eventbg1.jpg" alt="Team Member">
                            <h4>Sarah Johnson</h4>
                            <p>CEO & Founder</p>
                        </div>
                        <div class="team-member">
                            <img src="${pageContext.request.contextPath}/images/eventbg2.jpg" alt="Team Member">
                            <h4>Michael Chen</h4>
                            <p>Technical Director</p>
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
            <a href="${pageContext.request.contextPath}/careers" class="btn primary-btn">
                <i class="fas fa-graduation-cap"></i> View Opportunities
            </a>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact-section">
        <div class="container">
            <h2 class="section-title">Get In Touch</h2>
            <div class="contact-grid">
                <div class="contact-info">
                    <div class="contact-item">
                        <i class="fas fa-envelope"></i>
                        <p>contact@eventmanagement.com</p>
                    </div>
                    <div class="contact-item">
                        <i class="fas fa-phone"></i>
                        <p>+1 (555) 123-4567</p>
                    </div>
                    <div class="contact-item">
                        <i class="fas fa-map-marker-alt"></i>
                        <p>123 Event Street, City, Country</p>
                    </div>
                </div>
                <div class="social-links">
                    <a href="#" class="social-link"><i class="fab fa-facebook"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-linkedin"></i></a>
                    <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-section">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#features"><i class="fas fa-chevron-right"></i> Features</a></li>
                        <li><a href="#about"><i class="fas fa-chevron-right"></i> About Us</a></li>
                        <li><a href="#contact"><i class="fas fa-chevron-right"></i> Contact</a></li>
                        <li><a href="${pageContext.request.contextPath}/privacy"><i class="fas fa-chevron-right"></i> Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Resources</h4>
                    <ul>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Documentation</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> API Reference</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Support</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Blog</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Legal</h4>
                    <ul>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Terms of Service</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Privacy Policy</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> Cookie Policy</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> GDPR</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Connect With Us</h4>
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-linkedin"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Event Management System. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>