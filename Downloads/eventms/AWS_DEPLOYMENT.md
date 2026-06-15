# Deploying SEVENT-MS on AWS

The fastest AWS deployment path for this project is:

1. Amazon RDS for PostgreSQL
2. Amazon ECR for the Docker image
3. AWS App Runner to run the web app

This avoids managing EC2 instances manually and works well with the existing `Dockerfile`.

## 1. Create PostgreSQL on RDS

Create an RDS PostgreSQL database and note:

- DB endpoint
- DB port, usually `5432`
- DB name, for example `event_ms_db`
- Username
- Password

Run the schema in `src/main/resources/postgres_schema.sql` against the database, or leave `SPRING_JPA_HIBERNATE_DDL_AUTO=update` enabled for first deployment.

## 2. Build and Push the Docker Image

Replace the placeholders with your AWS account ID and region.

```powershell
aws ecr create-repository --repository-name sevent-ms
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin <account-id>.dkr.ecr.ap-south-1.amazonaws.com
docker build -t sevent-ms .
docker tag sevent-ms:latest <account-id>.dkr.ecr.ap-south-1.amazonaws.com/sevent-ms:latest
docker push <account-id>.dkr.ecr.ap-south-1.amazonaws.com/sevent-ms:latest
```

## 3. Create the App Runner Service

In AWS App Runner:

- Source: Container registry
- Provider: Amazon ECR
- Image: `<account-id>.dkr.ecr.ap-south-1.amazonaws.com/sevent-ms:latest`
- Port: `8080`
- Health check path: `/health`

Set these environment variables:

```text
SPRING_PROFILES_ACTIVE=production
SPRING_DATASOURCE_URL=jdbc:postgresql://<rds-endpoint>:5432/event_ms_db
SPRING_DATASOURCE_USERNAME=<db-user>
SPRING_DATASOURCE_PASSWORD=<db-password>
SPRING_JPA_HIBERNATE_DDL_AUTO=update
LOGGING_LEVEL_COM_EVENTMS=INFO
```

For production, store database credentials in AWS Secrets Manager or SSM Parameter Store and reference them from App Runner.

## 4. Networking

If your RDS database is private, configure App Runner VPC access so it can reach the RDS subnet/security group. The RDS security group must allow inbound PostgreSQL traffic on port `5432` from the App Runner VPC connector security group.

## Notes

- Uploaded event images are currently stored on the container filesystem. On AWS App Runner, that storage is not durable across redeploys. For production, move uploads to S3.
- Admin credentials are currently hardcoded in `AuthController`. Move them to environment variables before public production use.
- Spring Security currently permits all requests. Lock down admin routes before exposing the app widely.
