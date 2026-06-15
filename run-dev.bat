@echo off
REM Automated Spring Boot dev restart script
REM Stops existing SEVENT-MS dev servers, rebuilds, runs with H2

set PORT=8081

echo Stopping existing EventMS Java processes...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-CimInstance Win32_Process | Where-Object { $_.Name -like 'java*.exe' -and ($_.CommandLine -like '*SEVENT-MS.war*' -or $_.CommandLine -like '*WarLauncher*') } | ForEach-Object { Stop-Process -Id $_.ProcessId -Force }" >nul 2>&1

echo Checking port %PORT%...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ":%PORT% " ^| findstr LISTENING') do (
    echo Port %PORT% is already in use by process %%a. Please stop that process or change PORT in run-dev.bat.
    pause
    exit /b 1
)

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

echo Step 3: Starting app on port %PORT%...
start "SEVENT-MS Dev Server" java -cp "target\SEVENT-MS.war;target\dev-libs\h2-2.2.224.jar" org.springframework.boot.loader.WarLauncher --server.port=%PORT% "--spring.datasource.url=jdbc:h2:file:./target/ems-h2;MODE=PostgreSQL;DATABASE_TO_LOWER=TRUE;DEFAULT_NULL_ORDERING=HIGH" --spring.datasource.username=sa --spring.datasource.password= --spring.datasource.driver-class-name=org.h2.Driver --spring.jpa.database-platform=org.hibernate.dialect.H2Dialect --spring.jpa.hibernate.ddl-auto=none --spring.sql.init.mode=always --spring.sql.init.schema-locations=classpath:h2_schema.sql --spring.sql.init.continue-on-error=true

echo Server started! Access at http://localhost:%PORT%
echo.
echo Tip: For JSP hot-reload, add spring-boot-devtools to pom.xml (ask me how).
pause
