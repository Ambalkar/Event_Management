@echo off
REM Automated Spring Boot dev restart script
REM Kills process on port 8081 or 8080, rebuilds, runs with H2

echo Killing processes on ports 8080 and 8081...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :808[0-1]') do taskkill /PID %%a /F >nul 2>&1

echo Step 1: Clean package...
call mvnw.cmd clean package -DskipTests

if errorlevel 1 (
    echo Build failed!
    pause
    exit /b 1
)

echo Step 2: Copy H2 dependency...
call mvnw.cmd dependency:copy "-Dartifact=com.h2database:h2:2.2.224" "-DoutputDirectory=target\dev-libs"

if errorlevel 1 (
    echo Dependency copy failed!
    pause
    exit /b 1
)

echo Step 3: Starting app on port 8081...
start "EventMS Dev Server" java -cp "target\EventManagementSystem.war;target\dev-libs\h2-2.2.224.jar" org.springframework.boot.loader.WarLauncher --server.port=8081 "--spring.datasource.url=jdbc:h2:file:./target/ems-h2;MODE=PostgreSQL;DATABASE_TO_LOWER=TRUE;DEFAULT_NULL_ORDERING=HIGH" --spring.datasource.username=sa --spring.datasource.password= --spring.datasource.driver-class-name=org.h2.Driver --spring.jpa.database-platform=org.hibernate.dialect.H2Dialect --spring.jpa.hibernate.ddl-auto=none --spring.sql.init.mode=always --spring.sql.init.schema-locations=classpath:h2_schema.sql --spring.sql.init.continue-on-error=true

echo Server started! Access at http://localhost:8081
echo.
echo Tip: For JSP hot-reload, add spring-boot-devtools to pom.xml (ask me how).
pause
