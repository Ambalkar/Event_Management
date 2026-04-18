<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Management System - Documentation</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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

        .doc-header {
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
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.16);
            overflow: hidden;
        }

        .doc-header::after {
            content: '';
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            height: 4px;
            background: linear-gradient(90deg, var(--accent-teal), var(--accent-gold), var(--accent-green));
        }

        .doc-header h1 {
            margin: 0;
            font-size: 2.5em;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .doc-nav {
            position: sticky;
            top: 20px;
            background: linear-gradient(145deg, rgba(20, 23, 28, 0.98), rgba(7, 8, 10, 0.96));
            padding: 1rem;
            border-radius: 8px;
            margin-bottom: 2rem;
            box-shadow: var(--card-shadow);
            border: 1px solid rgba(255, 255, 255, 0.14);
        }

        .doc-nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .doc-nav li {
            margin-bottom: 0.5rem;
        }

        .doc-nav a {
            color: var(--text-primary);
            text-decoration: none;
            display: block;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .doc-nav a:hover {
            background: rgba(45, 212, 191, 0.14);
            color: var(--accent-teal);
            transform: translateX(5px);
        }

        .doc-section {
            background: linear-gradient(145deg, rgba(20, 23, 28, 0.98), rgba(7, 8, 10, 0.96));
            padding: 2rem;
            border-radius: 8px;
            margin-bottom: 2rem;
            box-shadow: var(--card-shadow);
            border: 1px solid rgba(255, 255, 255, 0.14);
        }

        .doc-section h2 {
            color: var(--accent-teal);
            margin-top: 0;
            border-bottom: 2px solid rgba(45, 212, 191, 0.28);
            padding-bottom: 0.5rem;
        }

        .doc-section h3 {
            color: var(--accent-gold);
            margin-top: 1.5rem;
        }

        .doc-section p {
            line-height: 1.6;
            color: var(--text-secondary);
        }

        .doc-section ul {
            color: var(--text-secondary);
            line-height: 1.6;
        }

        .doc-section code {
            background: rgba(0, 0, 0, 0.2);
            padding: 0.2rem 0.4rem;
            border-radius: 4px;
            font-family: monospace;
        }

        .feature-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin-top: 1.5rem;
        }

        .feature-card {
            background: rgba(255, 255, 255, 0.055);
            padding: 1.5rem;
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.14);
            position: relative;
            overflow: hidden;
            box-shadow: 0 16px 36px rgba(0,0,0,0.22);
        }

        .feature-card::before {
            content: '';
            position: absolute;
            inset: 0 0 auto 0;
            height: 3px;
            background: linear-gradient(90deg, var(--accent-teal), var(--accent-gold), var(--accent-green));
        }

        .feature-card h4 {
            color: var(--accent-teal);
            margin-top: 0;
        }

        .feature-card p {
            margin-bottom: 0;
        }

        .back-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: linear-gradient(135deg, var(--accent-teal), var(--accent-green));
            color: #04110e;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
            box-shadow: var(--card-shadow);
            transition: all 0.3s ease;
        }

        .back-to-top:hover {
            transform: translateY(-5px);
            background: linear-gradient(135deg, #5eead4, #86efac);
        }

        @media (max-width: 768px) {
            .container {
                padding: 1rem;
            }

            .doc-header {
                padding: 1.5rem;
            }

            .doc-header h1 {
                font-size: 2em;
            }

            .feature-list {
                grid-template-columns: 1fr;
            }
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

        .nav-link {
            color: var(--text-primary);
            text-decoration: none;
            padding: 0.75rem 1.5rem;
            border-radius: 8px;
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
        <div class="doc-header">
            <h1>Event Management System Documentation</h1>
        </div>

        <div class="doc-nav">
            <ul>
                <li><a href="#overview">Overview</a></li>
                <li><a href="#user-features">User Features</a></li>
                <li><a href="#admin-features">Admin Features</a></li>
                <li><a href="#event-management">Event Management</a></li>
                <li><a href="#registration">Registration System</a></li>
                <li><a href="#security">Security Features</a></li>
                <li><a href="#technical">Technical Details</a></li>
            </ul>
        </div>

        <section id="overview" class="doc-section">
            <h2>About the Project</h2>
            <div class="about-content">
                <div class="developer-info">
                    <h3>Developer</h3>
                    <p class="highlight-text">This Event Management System is developed by a single developer, showcasing a comprehensive full-stack implementation of a modern web application.</p>
                </div>
                
                <div class="project-overview">
                    <h3>Project Overview</h3>
                    <p>The Event Management System is a comprehensive web application designed to streamline the process of managing events, registrations, and attendee tracking. Built from the ground up, this project demonstrates expertise in both frontend and backend development.</p>
                </div>
            </div>
            
            <div class="feature-list">
                <div class="feature-card">
                    <h4><i class="fas fa-code"></i> Full-Stack Development</h4>
                    <p>Complete implementation of both frontend and backend components</p>
                </div>
                <div class="feature-card">
                    <h4><i class="fas fa-shield-alt"></i> Secure Architecture</h4>
                    <p>Robust security measures and data protection</p>
                </div>
                <div class="feature-card">
                    <h4><i class="fas fa-mobile-alt"></i> Responsive Design</h4>
                    <p>Optimized for all devices and screen sizes</p>
                </div>
            </div>

            <style>
                .about-content {
                    background: rgba(255, 255, 255, 0.05);
                    border-radius: 15px;
                    padding: 2rem;
                    margin-bottom: 2rem;
                    border: 1px solid var(--border-color);
                }

                .developer-info {
                    margin-bottom: 2rem;
                }

                .highlight-text {
                    color: var(--primary-color);
                    font-size: 1.1em;
                    line-height: 1.6;
                    font-weight: 500;
                    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
                }

                .project-overview p {
                    color: var(--text-primary);
                    font-size: 1.05em;
                    line-height: 1.7;
                }

                .feature-card {
                    background: rgba(255, 255, 255, 0.08);
                    border: 1px solid var(--border-color);
                    transition: all 0.3s ease;
                }

                .feature-card:hover {
                    transform: translateY(-5px);
                    background: rgba(255, 255, 255, 0.12);
                    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
                }

                .feature-card h4 {
                    color: var(--primary-color);
                    display: flex;
                    align-items: center;
                    gap: 0.5rem;
                    font-size: 1.2em;
                }

                .feature-card h4 i {
                    color: var(--secondary-color);
                }

                .feature-card p {
                    color: var(--text-primary);
                    font-size: 1.05em;
                    margin-top: 0.5rem;
                }

                @media (max-width: 768px) {
                    .about-content {
                        padding: 1.5rem;
                    }

                    .highlight-text {
                        font-size: 1em;
                    }

                    .project-overview p {
                        font-size: 1em;
                    }
                }
            </style>
        </section>

        <section id="user-features" class="doc-section">
            <h2>User Features</h2>
            <h3>Event Browsing</h3>
            <p>Users can browse through available events with detailed information including:</p>
            <ul>
                <li>Event name and description</li>
                <li>Date and location</li>
                <li>Guest limit and current registration count</li>
                <li>Registration status</li>
            </ul>

            <h3>Registration Management</h3>
            <p>Users can manage their event registrations:</p>
            <ul>
                <li>Register for events</li>
                <li>View registration history</li>
                <li>Cancel registrations</li>
                <li>Download event tickets</li>
            </ul>
        </section>

        <section id="admin-features" class="doc-section">
            <h2>Admin Features</h2>
            <h3>Event Management</h3>
            <p>Administrators have full control over events:</p>
            <ul>
                <li>Create new events</li>
                <li>Edit existing events</li>
                <li>Delete events</li>
                <li>Manage event details</li>
            </ul>

            <h3>User Management</h3>
            <p>Admin capabilities for user management:</p>
            <ul>
                <li>View user registrations</li>
                <li>Manage user access</li>
                <li>Generate reports</li>
                <li>Export data</li>
            </ul>
        </section>

        <section id="event-management" class="doc-section">
            <h2>Event Management</h2>
            <h3>Creating Events</h3>
            <p>To create a new event:</p>
            <ol>
                <li>Navigate to the Admin Dashboard</li>
                <li>Click "Add New Event"</li>
                <li>Fill in event details</li>
                <li>Submit the form</li>
            </ol>

            <h3>Event Details</h3>
            <p>Each event includes:</p>
            <ul>
                <li>Basic information (name, date, location)</li>
                <li>Description and requirements</li>
                <li>Guest limit and registration count</li>
                <li>Registration status</li>
            </ul>
        </section>

        <section id="registration" class="doc-section">
            <h2>Registration System</h2>
            <h3>Registration Process</h3>
            <p>The registration process includes:</p>
            <ul>
                <li>User authentication</li>
                <li>Event selection</li>
                <li>Confirmation process</li>
                <li>Ticket generation</li>
            </ul>

            <h3>Ticket Management</h3>
            <p>Features of the ticket system:</p>
            <ul>
                <li>Digital ticket generation</li>
                <li>QR code for verification</li>
                <li>Email confirmation</li>
                <li>Ticket cancellation</li>
            </ul>
        </section>

        <section id="security" class="doc-section">
            <h2>Security Features</h2>
            <h3>Authentication</h3>
            <p>Security measures include:</p>
            <ul>
                <li>Secure password hashing</li>
                <li>Session management</li>
                <li>Role-based access control</li>
                <li>Input validation</li>
            </ul>

            <h3>Data Protection</h3>
            <p>Data security features:</p>
            <ul>
                <li>SQL injection prevention</li>
                <li>XSS protection</li>
                <li>CSRF tokens</li>
                <li>Secure data transmission</li>
            </ul>
        </section>

        <section id="technical" class="doc-section">
            <h2>Technical Details</h2>
            <h3>Technology Stack</h3>
            <ul>
                <li>Frontend: HTML5, CSS3, JavaScript</li>
                <li>Backend: Java Servlets</li>
                <li>Database: MySQL</li>
                <li>Web Server: Apache Tomcat</li>
            </ul>

            <h3>System Requirements</h3>
            <ul>
                <li>Java Runtime Environment 8 or higher</li>
                <li>MySQL 5.7 or higher</li>
                <li>Modern web browser</li>
                <li>Internet connection</li>
            </ul>
        </section>

        <a href="#" class="back-to-top">
            <i class="fas fa-arrow-up"></i>
        </a>
    </div>

    <script>
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });

        // Back to top button visibility
        window.addEventListener('scroll', function() {
            const backToTop = document.querySelector('.back-to-top');
            if (window.scrollY > 300) {
                backToTop.style.display = 'flex';
            } else {
                backToTop.style.display = 'none';
            }
        });

        // Navigation toggle for mobile
        document.getElementById('navToggle').addEventListener('click', function() {
            const navLinks = document.getElementById('navLinks');
            navLinks.classList.toggle('show');
        });

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
