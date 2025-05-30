FROM maven:3.8.4-openjdk-11 as build
WORKDIR /app

# Copy the pom.xml first to cache dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the source code
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# Second stage: Run the application
FROM tomcat:9.0-jdk11
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY --from=build /app/target/EventManagementSystem.war /usr/local/tomcat/webapps/ROOT.war

# Set environment variables
ENV PORT=8080
ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"

# Expose the port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]