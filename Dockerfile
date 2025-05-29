
FROM tomcat:9.0-jdk11

# Remove default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR file from target directory
COPY target/EventManagementSystem.war /usr/local/tomcat/webapps/ROOT.war

# Set environment variables
ENV PORT=8080
ENV CATALINA_OPTS="-Xms512m -Xmx1024m"

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]