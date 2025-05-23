# Event Management System

## Overview
A Java web application for event management built with Servlets, JSP, JDBC, and MySQL, using Maven for dependency management and build automation.

## Project Structure
```
EventManagement1/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── example/
│       │           └── eventmanagement/
│       │               ├── model/
│       │               │   └── Event.java
│       │               ├── servlet/
│       │               │   ├── AdminServlet.java
│       │               │   └── UserServlet.java
│       │               └── util/
│       │                   └── DBConnection.java
│       └── webapp/
│           ├── css/
│           │   ├── admin.css
│           │   └── user.css
│           └── WEB-INF/
│               ├── views/
│               │   ├── admin_dashboard.jsp
│               │   └── user_events.jsp
│               └── web.xml
└── pom.xml
```

## Prerequisites
- JDK 8 or higher
- Maven 3.6 or higher
- MySQL Server
- IDE (recommended: VS Code with Java extensions)

## Setup Instructions

### 1. Database Setup
```bash
mysql -u root -p < database_schema.sql
```

### 2. Configure Database Connection
Update `src/main/java/com/example/eventmanagement/util/DBConnection.java`:
```java
private static final String URL = "jdbc:mysql://localhost:3306/event_management";
private static final String USER = "your_username";
private static final String PASSWORD = "your_password";
```

### 3. Build and Run
```bash
# Clean and package the application
mvn clean package

# Run with embedded Tomcat
mvn tomcat7:run
```

### 4. Access the Application
- Admin Dashboard: http://localhost:8080/EventManagementSystem/admin
- User Interface: http://localhost:8080/EventManagementSystem/user

## Development

### Maven Dependencies
Key dependencies in `pom.xml`:
```xml
<dependencies>
    <dependency>
        <groupId>javax.servlet</groupId>
        <artifactId>javax.servlet-api</artifactId>
        <version>3.1.0</version>
    </dependency>
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <version>8.0.33</version>
    </dependency>
    <dependency>
        <groupId>javax.servlet</groupId>
        <artifactId>jstl</artifactId>
        <version>1.2</version>
    </dependency>
</dependencies>
```

### Common Maven Commands
```bash
mvn clean           # Clean the project
mvn compile         # Compile source code
mvn package         # Create WAR file
mvn tomcat7:run    # Run with embedded Tomcat
```

## Troubleshooting
- Port conflicts: Ensure port 8080 is free or configure a different port in `pom.xml`
- Database connection: Verify MySQL is running and credentials are correct
- Build errors: Run `mvn clean package -X` for detailed error logs

## License
This project is provided as-is for educational purposes.
