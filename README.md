Sure! Here is the README.md file:

# System Monitoring App

This is a simple system monitoring app built using Golang and the Prometheus monitoring system. The app periodically updates two metrics: the current temperature of the CPU and the number of hard-disk errors. The metrics are exposed through an HTTP endpoint that can be scraped by Prometheus.

## Dependencies

To run this application, you will need to have Golang and Prometheus installed on your system.

## Running the Application

To run the application, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the root directory of the project.
3. Run the following command to start the application:

```bash
go run main.go
```

4. Open your web browser and navigate to `http://localhost:8080/metrics` to view the metrics.

## Running the Application with Docker

To run the application with Docker, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the root directory of the project.
3. Run the following command to build the Docker image:

```bash
docker build -t system-monitoring-app .
```

4. Run the following command to start a Docker container:

```bash
docker run -p 8080:8080 system-monitoring-app
```

5. Open your web browser and navigate to `http://localhost:8080/metrics` to view the metrics.

## Files

- `main.go`: The main application code that periodically updates the metrics and exposes them through an HTTP endpoint.
- `Dockerfile`: The Dockerfile used to build the Docker image for the application.