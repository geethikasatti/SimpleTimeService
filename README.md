# SimpleTimeService

SimpleTimeService is a lightweight microservice that returns the current timestamp
and the client’s IP address as a JSON response.

The service is containerized using Docker and follows container best practices:
- Small image size (Alpine + multi-stage build)
- Runs as a non-root user
- No secrets stored in the repository

---

## Prerequisites

- Docker installed on your system

No other software is required.

---

## How to Build the Application

Clone the repository and run the following command from the project root directory:
docker build -t simpletimeservice .
