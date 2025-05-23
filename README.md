# Event Management Application

This project is a Java-based web application for managing events. It allows administrators to perform CRUD (Create, Read, Update, Delete) operations on events.

## Project Structure

```
event-management
├── src
│   └── main
│       ├── java
│       │   └── com
│       │       └── example
│       │           └── eventmanagement
│       │               ├── model          # Contains model classes representing the data structure
│       │               ├── servlet        # Contains servlet classes for handling HTTP requests
│       │               └── util           # Contains utility classes for database connections
│       ├── resources                       # Contains configuration files and other resources
│       └── webapp
│           └── WEB-INF
│               └── views                  # Contains JSP files or view templates
├── Dockerfile                              # Instructions to build a Docker image
├── .dockerignore                           # Files and directories to ignore when building the Docker image
├── pom.xml                                 # Maven configuration file for dependencies and build settings
└── README.md                               # Documentation for the project
```

## Features

- **Event Management**: Add, edit, and delete events.
- **User Interface**: JSP-based views for displaying event information.
- **Database Connectivity**: Utilizes a utility class for managing database connections.

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd event-management
   ```

2. **Build the project**:
   ```bash
   mvn clean install
   ```

3. **Run the application**:
   Deploy the application on a servlet container like Apache Tomcat.

4. **Docker**:
   To build and run the application using Docker, use the following commands:
   ```bash
   docker build -t event-management .
   docker run -p 8080:8080 event-management
   ```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.