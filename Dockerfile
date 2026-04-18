# Optimized Dockerfile for Render Free Tier (Maven direct, no wrapper needed)
# Stage 1: Builder
FROM eclipse-temurin:17-jdk-alpine AS builder

WORKDIR /app

# Copy pom.xml first
COPY pom.xml .

# Download dependencies + cache layer
RUN apk add --no-cache maven && \
    mvn dependency:go-offline -B

# Copy source
COPY src ./src

# Build WAR
RUN mvn clean package -DskipTests -B

# Stage 2: Runtime
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy WAR
COPY --from=builder /app/target/EventManagementSystem.war app.war

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=40s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:8080/health || exit 1

ENTRYPOINT ["sh", "-c", "java -XX:+UseContainerSupport -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Djava.security.egd=file:/dev/./urandom $JAVA_OPTS -jar app.war"]

