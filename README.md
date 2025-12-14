# SimpleTimeService

SimpleTimeService is a lightweight microservice that returns the current timestamp
and the client IP address as a JSON response.

This repository contains:
- A Dockerized microservice
- Terraform infrastructure to deploy it on AWS ECS Fargate

---

## Prerequisites

- Docker installed
- Git installed
- (Optional) Terraform and AWS credentials for cloud deployment

---

## Run the Application Locally (Docker)

### 1. Build the Docker image

From the repository root:https://github.com/geethikasatti/SimpleTimeService.git

```bash
docker build -t simpletimeservice .

curl http://localhost:8000/
{
  "timestamp": "2025-12-14T13:40:00+00:00",
  "ip": "127.0.0.1"
}

