# SEVENT-MS

SEVENT-MS is a Java 17 web application for creating events, publishing them to users, and tracking event bookings. It is built with Spring Boot, JSP views, PostgreSQL, and Maven, and can run locally with Docker Compose, Maven, or the included Windows development script.

<img width="1440" height="852" alt="EMS landing page screenshot" src="https://github.com/user-attachments/assets/592c4b3a-fd5a-49fa-bf98-a1d423447eef" />
<img width="1440" height="852" alt="EMS user events screenshot" src="https://github.com/user-attachments/assets/5ba8f13d-8f2a-4ee9-9c74-68bf80846994" />
<img width="1440" height="852" alt="EMS admin dashboard screenshot" src="https://github.com/user-attachments/assets/b4ea4422-73ac-4238-af77-94cb223565df" />
<img width="1440" height="852" alt="EMS bookings screenshot" src="https://github.com/user-attachments/assets/50df2b03-8362-41ae-93f9-36f7e856f08d" />

## Features

- Public landing page with project and developer information.
- User event catalog at `/user`.
- Event booking with participant name, email, generated digital ID, and booking date.
- "My Events" lookup at `/myEvents` by participant email.
- Admin dashboard at `/admin` for managing event records and viewing bookings.
- Simple events, major events, and sub-events.
- Capacity tracking with "housefull" handling.
- PostgreSQL schema for events and bookings.
- Health check endpoint at `/health`.
- Docker, Render, and Railway deployment files.

## Tech Stack

- Java 17
- Spring Boot 2.7.0
- Spring MVC
- Spring Data JPA dependency with direct JDBC usage in controllers
- Spring Security configured to permit all requests
- JSP and JSTL
- PostgreSQL
- Maven
- Docker and Docker Compose

## Project Structure

```text
SEVENT-MS/
|-- src/main/java/
|   |-- com/eventms/
|   |   |-- EventManagementSystemApplication.java
|   |   |-- config/SecurityConfig.java
|   |   |-- controller/
|   |   `-- repository/
|   `-- com/example/eventmanagement/
|       |-- model/
|       |-- servlet/
|       `-- util/
|-- src/main/resources/
|   |-- application.properties
|   |-- postgres_schema.sql
|   |-- database_schema.sql
|   |-- database_setup.sql
|   `-- import.sql
|-- src/main/webapp/
|   |-- WEB-INF/views/
|   |   |-- admin_dashboard.jsp
|   |   |-- user_events.jsp
|   |   |-- my_events.jsp
|   |   `-- error.jsp
|   |-- css/
|   |-- images/
|   |-- index.jsp
|   `-- documentation.jsp
|-- docker-compose.yml
|-- Dockerfile
|-- render.yaml
|-- railway.toml
|-- run-dev.bat
`-- pom.xml
```

## Application Routes

| Route | Description |
| --- | --- |
| `/` | Landing page, forwarded to `index.jsp`. |
| `/user` | Browse and book available events. |
| `/myEvents` | Search bookings by participant email. |
| `/admin` | Create, update, delete, and review events and bookings. |
| `/documentation.jsp` | In-app documentation page. |
| `/health` | Plain `OK` health check for deployment platforms. |

## Database

The default database is PostgreSQL. Runtime settings are read from environment variables with local defaults:

```properties
SPRING_DATASOURCE_URL=jdbc:postgresql://localhost:5432/event_ms_db
SPRING_DATASOURCE_USERNAME=postgres
SPRING_DATASOURCE_PASSWORD=postgres
SPRING_PROFILES_ACTIVE=default
```

The core schema is in `src/main/resources/postgres_schema.sql` and creates:

- `events`: event metadata, capacity counts, event type, and optional parent event.
- `bookings`: participant bookings linked to events, with a generated digital ID.

## Local Development

### Prerequisites

- Java JDK 17+
- Maven, or the included Maven wrapper
- PostgreSQL, Docker Compose, or the Windows H2 helper script

### Option 1: Docker Compose

This starts both the application and PostgreSQL.

```bash
docker-compose up --build
```

Open:

```text
http://localhost:8080
```

### Option 2: Maven with Local PostgreSQL

Create a PostgreSQL database named `event_ms_db`, then initialize the schema:

```bash
psql -U postgres -d event_ms_db -f src/main/resources/postgres_schema.sql
```

Build and run:

```bash
./mvnw.cmd clean package -DskipTests
java -jar target/SEVENT-MS.war
```

Open:

```text
http://localhost:8080
```

### Option 3: Windows Dev Script

`run-dev.bat` builds the WAR, downloads H2 for local development, and starts the app on port `8081`.

```bat
run-dev.bat
```

Open:

```text
http://localhost:8081
```

## Configuration

Important environment variables:

| Variable | Default | Purpose |
| --- | --- | --- |
| `PORT` | `8080` | Server port. |
| `SPRING_PROFILES_ACTIVE` | `default` | Active Spring profile. |
| `SPRING_DATASOURCE_URL` | `jdbc:postgresql://localhost:5432/event_ms_db` | JDBC database URL. |
| `SPRING_DATASOURCE_USERNAME` | `postgres` | Database user. |
| `SPRING_DATASOURCE_PASSWORD` | `postgres` | Database password. |
| `SPRING_SECURITY_USERNAME` | `admin` | Default Spring security user, currently unused because all routes are permitted. |
| `SPRING_SECURITY_PASSWORD` | `admin` | Default Spring security password, currently unused because all routes are permitted. |

See `.env.example` for deployment-oriented values.

## Build

```bash
./mvnw.cmd clean package -DskipTests
```

The packaged application is created at:

```text
target/SEVENT-MS.war
```

## Deployment

### Docker

```bash
docker build -t sevent-ms .
docker run -p 8080:8080 \
  -e SPRING_DATASOURCE_URL=jdbc:postgresql://host.docker.internal:5432/event_ms_db \
  -e SPRING_DATASOURCE_USERNAME=postgres \
  -e SPRING_DATASOURCE_PASSWORD=postgres \
  sevent-ms
```

### Render

This repository includes `render.yaml` and a Dockerfile. For Render:

1. Create or connect a PostgreSQL database.
2. Create a web service from this repository.
3. Use Docker runtime.
4. Set the datasource environment variables from `.env.example`.
5. Run `src/main/resources/postgres_schema.sql` against the production database if the tables do not already exist.

Health check:

```text
/health
```

## Notes

- The app currently permits all requests in `SecurityConfig`, including `/admin`.
- Controllers mostly use `DataSource`, `Connection`, and prepared SQL directly.
- `spring.jpa.hibernate.ddl-auto=update` is enabled, but the checked-in SQL schema is still the clearest source for the database tables expected by the controllers.
- `target/` contains generated build output and should not be edited manually.

## Future Improvements

- Add admin authentication and CSRF protection before public production use.
- Add automated tests for booking capacity and major/sub-event behavior.
- Move direct SQL operations into service/repository layers.
- Add duplicate-booking feedback for the existing `(user_email, event_id)` uniqueness constraint.
- Add migrations with Flyway or Liquibase.
