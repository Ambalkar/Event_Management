# Event Management System

## Project Description
This is a Java-based web application for managing events. It allows users to register, login, browse events, and for organizers to create and manage events. The application follows the MVC architecture and uses servlets and JSP for the web layer.

## Technologies Used
- Java Servlet API
- JSP (JavaServer Pages)
- MySQL Database
- JDBC for database connectivity
- HTML, CSS, JavaScript for frontend
- Servlet Filters for security

## Project Structure Overview
- `src/main/java/com/eventmanagement/config/` - Configuration classes for database and security.
- `src/main/java/com/eventmanagement/controller/` - Servlet controllers handling HTTP requests.
- `src/main/java/com/eventmanagement/dao/` - Data Access Objects for database operations.
- `src/main/java/com/eventmanagement/model/` - Java model classes representing entities like User, Event, Ticket, etc.
- `src/main/java/com/eventmanagement/service/` - Business logic services.
- `src/main/java/com/eventmanagement/util/` - Utility classes for common functions.
- `src/main/resources/` - Configuration files and SQL scripts for database schema and data.
- `src/main/webapp/` - Web resources including JSPs, HTML, CSS, JavaScript, and images.
- `src/main/webapp/WEB-INF/web.xml` - Servlet configuration file.

## Setup Instructions

### Database Setup
1. Install MySQL server if not already installed.
2. Create a database named `eventdb`.
3. Execute the SQL scripts located in `src/main/resources/db/schema.sql` to create the database schema.
4. Execute the SQL scripts located in `src/main/resources/db/data.sql` to populate initial data.
5. Update the database credentials in `src/main/java/com/eventmanagement/config/DatabaseConfig.java` if necessary (default user: root, password: yourpassword).

### Build and Run the Project
1. Ensure you have a Java Servlet container like Apache Tomcat installed.
2. Build the project using your preferred IDE or build tool (e.g., Maven or manually compile).
3. Deploy the generated WAR file or the project directory to the servlet container's webapps directory.
4. Start the servlet container.
5. Access the application in your browser at `http://localhost:8080/` (adjust port if different).

## Features
- User registration and login with session management.
- Role-based access control (User, Organizer).
- Event browsing for all users.
- Event creation and management for organizers.
- Secure access enforced via servlet filter.

## Additional Notes
- The application uses a servlet filter to enforce login authentication.
- Passwords should be stored securely; currently, the example uses plain text (consider enhancing security).
- Frontend assets are located under `src/main/webapp/assets/` including CSS, JS, and images.

---

This README provides an overview and instructions to set up, build, and run the Event Management System project.
