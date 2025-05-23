FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the Maven build artifact
COPY target/event-management.war /app/event-management.war

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "event-management.war"]