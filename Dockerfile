# Use Java 17 as the base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom.xml
COPY .mvn/ .mvn/
COPY mvnw pom.xml ./

# Download dependencies
RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline

# Copy source code
COPY src ./src

# Build the application
RUN ./mvnw clean package -DskipTests

# Expose port 
EXPOSE 8080

# Run the application with environment variables
CMD ["java", \
     "-DSPRING_DATASOURCE_URL=${SPRING_DATASOURCE_URL}", \
     "-DSPRING_DATASOURCE_USERNAME=${SPRING_DATASOURCE_USERNAME}", \
     "-DSPRING_DATASOURCE_PASSWORD=${SPRING_DATASOURCE_PASSWORD}", \
     "-jar", "target/EventManagementSystem.war"]