# Event Management System (EMS)
<img width="1440" height="852" alt="Screenshot 2026-02-24 083516" src="https://github.com/user-attachments/assets/592c4b3a-fd5a-49fa-bf98-a1d423447eef" />
<img width="1440" height="852" alt="Screenshot 2026-02-24 083546" src="https://github.com/user-attachments/assets/5ba8f13d-8f2a-4ee9-9c74-68bf80846994" />
<img width="1440" height="852" alt="Screenshot 2026-02-24 083603" src="https://github.com/user-attachments/assets/b4ea4422-73ac-4238-af77-94cb223565df" />
<img width="1440" height="852" alt="Screenshot 2026-02-24 083634" src="https://github.com/user-attachments/assets/50df2b03-8362-41ae-93f9-36f7e856f08d" />

## 🌟 Overview
A sophisticated web-based Event Management System built with Java, Spring Framework, and modern web technologies. The system offers comprehensive features for event creation, management, and participation with a focus on user experience and security.

## ⚡ Key Features

### 🎯 Core Functionality
- **Event Creation & Management**
  - Intuitive event creation interface
  - Real-time event tracking
  - Automated registration system
  - Comprehensive event analytics

### 👥 User Management
- **Role-Based Access Control**
  - Admin Portal
  - User Portal
  - Event Organizer capabilities
  - Participant management

### 🔒 Security Features
- Secure authentication system
- Role-based authorization
- Data encryption
- Session management
- XSS protection

### 📱 Interface
- Responsive design for all devices
- Modern, intuitive UI
- Dark theme with gradient accents
- Interactive components
- Real-time updates

## 🛠️ Technical Stack

### Backend
- Java 
- Spring Framework
- MySQL Database
- Hibernate ORM
- JSP (JavaServer Pages)
- JSTL (JSP Standard Tag Library)

### Frontend
- HTML5
- CSS3
- JavaScript
- Font Awesome Icons
- Google Fonts (Poppins)
- CSS Custom Properties
- Flexbox & Grid layouts

### Security
- Spring Security
- JWT Authentication
- HTTPS Protocol
- Form validation
- SQL injection prevention

## 📂 Project Structure

```
EMS/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── [Java source files]
│   │   ├── resources/
│   │   │   └── [Configuration files]
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   ├── views/
│   │       │   │   ├── my_events.jsp
│   │       │   │   └── user_events.jsp
│   │       ├── css/
│   │       │   └── style.css
│   │       ├── images/
│   │       ├── documentation.jsp
│   │       └── index.jsp
│   └── test/
└── pom.xml
```

## 🚀 Features in Detail

### 1. User Interface
- **Navigation**
  - Fixed responsive navbar
  - Dynamic mobile menu
  - Smooth animations
  - Consistent styling

- **Landing Page**
  - Hero section with background image
  - Features showcase
  - How it works section
  - Benefits overview
  - Contact form
  - Newsletter subscription

### 2. Event Management
- Event creation
- Event modification
- Event deletion
- Event status tracking
- Participant management
- Real-time analytics

### 3. User Features
- Event registration
- Event browsing
- Profile management
- Booking history
- Event notifications
- Personal dashboard

## 💻 Installation & Setup

### Prerequisites
- Java JDK 11 or higher
- Maven 3.6+
- MySQL 8.0+
- Tomcat 9.0+

### Setup Steps
1. Clone the repository:
```bash
git clone https://github.com/yourusername/EMS.git
```

2. Configure database:
```sql
CREATE DATABASE ems;
```

3. Update application.properties with your database credentials

4. Build the project:
```bash
mvn clean install
```

5. Deploy to Tomcat server

## 🔧 Configuration

### Database Configuration
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/ems
spring.datasource.username=your_username
spring.datasource.password=your_password
```

### Application Properties
```properties
server.port=8080
spring.jpa.hibernate.ddl-auto=update
```

## 📚 Documentation

Comprehensive documentation available at `/documentation.jsp` including:
- Project Overview
- User Guide
- Technical Documentation
- API Reference
- Security Guidelines
- Troubleshooting Guide

## 🤝 Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Open pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👥 Contact & Support

- Email: devendraambalkar11@gmail.com
- GitHub: [Project Repository](https://github.com/Ambalkar/Event_Management.git)
- Documentation: [Project Docs](https://your-domain.com/documentation)

## 🎯 Future Enhancements

- Mobile application
- Payment gateway integration
- Advanced analytics dashboard
- Multi-language support
- API integration capabilities
- Enhanced reporting features

## 🙏 Acknowledgments

- Font Awesome for icons
- Google Fonts for typography
- Community contributors
- Open source community
