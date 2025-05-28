<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
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
        <div class="overlay"></div>
        <div class="hero-content">
            <h1 class="hero-title">Plan. Manage. Succeed.</h1>
            <p class="hero-subtitle">A powerful, all-in-one Event Management System for organizers and participants</p>
            <div class="hero-cta">
                <a href="${pageContext.request.contextPath}/register" class="btn primary-btn">
                    <i class="fas fa-rocket"></i> Get Started
                </a>
                <a href="#features" class="btn secondary-btn">
                    <i class="fas fa-play-circle"></i> View Demo
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
                        <li><a href="#features">Features</a></li>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li><a href="${pageContext.request.contextPath}/privacy">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Resources</h4>
                    <ul>
                        <li><a href="#">Documentation</a></li>
                        <li><a href="#">API Reference</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Legal</h4>
                    <ul>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Cookie Policy</a></li>
                        <li><a href="#">GDPR</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2025 Event Management System. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>