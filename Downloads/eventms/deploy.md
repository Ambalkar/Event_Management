# Deployment Guide: SEVENT-MS

This guide details how to deploy the **SEVENT-MS** application. It supports two deployment architectures depending on your preferences:

* **Option A: Monolithic Architecture (Recommended & Easiest)**: Deploy the entire Spring Boot application (including the JSP views) as a single service on **Render** connecting to **Neon PostgreSQL**.
* **Option B: Decoupled Architecture**: Deploy the static frontend pages (re-coded into HTML/CSS/JS in the `frontend/` folder) to **Vercel**, the Spring Boot REST API backend to **Render**, and the database to **Neon**.

---

## Part 1: Neon Database Setup (Required for both Options)

**Neon** is a serverless PostgreSQL database provider. Setting up the database is simple and free:

1. Sign up or log in to [Neon Console](https://console.neon.tech).
2. Click **Create Project**.
3. Name your project (e.g., `sevent-ms-db`), choose the latest **PostgreSQL** version, and select a region closest to your users. Click **Create Project**.
4. Once created, you will see a **Connection Details** modal.
5. Select **Connection String** and make sure **Transaction pooler** is unchecked (or choose PostgreSQL driver URI format).
6. Copy the connection URI, which looks like:
   `postgresql://neondb_owner:password@ep-host-name.region.aws.neon.tech/neondb?sslmode=require`
7. Save this connection string securely. You will pass it to Render in the next steps.

---

## Option A: Monolithic Deployment (Render + Neon)

This path runs the Spring Boot application exactly as it is configured, serving dynamic JSP pages directly from the container.

### Step 1: Push Project to GitHub
Create a GitHub repository and push your project to it.

### Step 2: Create Web Service on Render
1. Sign up or log in to [Render](https://render.com).
2. On your Render dashboard, click **New** > **Web Service**.
3. Connect your GitHub repository.
4. Set the following configuration values:
   * **Name**: `sevent-ms`
   * **Region**: Choose a region close to your Neon database region.
   * **Branch**: `main` (or your active branch)
   * **Runtime**: `Docker`
5. Render will automatically detect the root `Dockerfile` and compile the WAR file using Maven, then run it in a secure JRE environment.

### Step 3: Configure Environment Variables
Scroll down to **Advanced** or navigate to the **Environment** tab, click **Add Environment Variable**, and set:

| Key | Value | Purpose |
| --- | --- | --- |
| `DATABASE_URL` | *Your Neon Connection String copied in Part 1* | Tells the app to connect to Neon PostgreSQL. |
| `SPRING_PROFILES_ACTIVE` | `production` | Enables production profile configs. |
| `SPRING_JPA_HIBERNATE_DDL_AUTO` | `update` | Automatically creates/updates the database tables on first launch. |
| `PORT` | `8080` | Port for the Tomcat server to bind to. |
| `ADMIN_EMAIL` | `your-admin-email@example.com` | Override default admin email credentials. |
| `ADMIN_PASSWORD_HASH` | *BCrypt hash of your admin password* | Override default admin BCrypt password. |

### Step 4: Deploy and Verify
1. Click **Deploy Web Service**.
2. Monitor the Render logs. You should see Maven compile your package and Tomcat spin up on port 8080.
3. Access your app at the Render-provided subdomain (e.g., `https://sevent-ms.onrender.com`).
4. Access `/health` to verify status.

---

## Option B: Decoupled Deployment (Vercel + Render + Neon)

This path hosts a pure static frontend (HTML/CSS/JS) on Vercel and maps API requests to the Spring Boot REST endpoints on Render.

### Step 1: Deploy Neon Database
Follow the instructions in **Part 1** to spin up the Neon Postgres instance.

### Step 2: Deploy Backend REST API on Render
1. Log in to [Render](https://render.com) and click **New** > **Web Service**.
2. Connect your GitHub repository.
3. Configure:
   * **Name**: `sevent-ms-api`
   * **Runtime**: `Docker`
4. Set the environment variables:
   * `DATABASE_URL` = *Your Neon connection string*
   * `SPRING_PROFILES_ACTIVE` = `production`
   * `SPRING_JPA_HIBERNATE_DDL_AUTO` = `update`
   * `PORT` = `8080`
5. Once deployed, copy your Render Web Service URL (e.g., `https://sevent-ms-api.onrender.com`).

### Step 3: Deploy Frontend on Vercel
1. Log in to [Vercel](https://vercel.com).
2. Click **Add New** > **Project** and import your GitHub repository.
3. In the project setup panel, click **Edit** next to **Root Directory** and select the **`frontend`** directory.
4. Click **Deploy**.
5. Once the build finishes, you will get a Vercel deployment URL (e.g., `https://eventms-frontend.vercel.app`).

### Step 4: Bind Frontend and Backend (URL Configuration)
To direct Vercel to fetch data from the correct Render URL:
1. Open the file `frontend/js/config.js` in your repository.
2. Update the fallback production URL to your Render backend URL:
   ```javascript
   const CONFIG = {
       API_BASE_URL: window.location.origin.includes('localhost') || window.location.origin.includes('127.0.0.1')
           ? 'http://localhost:8080'
           : 'https://sevent-ms-api.onrender.com' // <-- Put your Render API URL here
   };
   ```
3. Commit and push this change to GitHub. Vercel will auto-deploy the updated configuration.

---

## Local Verification & Testing

Before deploying, you can run the decoupled architecture locally:

1. **Start the backend database**: Ensure local PostgreSQL is running or change `application.properties` to connect to Neon directly.
2. **Start Spring Boot**:
   ```bash
   ./mvnw clean package -DskipTests
   java -jar target/SEVENT-MS.war
   ```
   The REST APIs will run at `http://localhost:8080/api/events`.
3. **Open the frontend locally**:
   Open `frontend/index.html` in your browser. Since `config.js` detects `localhost`, it will automatically point all API requests to `http://localhost:8080` using CORS!
