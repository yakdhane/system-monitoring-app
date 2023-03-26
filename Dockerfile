Sure! Here is the Dockerfile code:

```
# Base image
FROM golang:1.16

# Set the working directory
WORKDIR /app

# Copy the go.mod and go.sum files to the container
COPY go.mod ./
COPY go.sum ./

# Download the dependencies
RUN go mod download

# Copy the rest of the application to the container
COPY . .

# Build the application
RUN go build -o main .

# Expose the port that the application will listen on
EXPOSE 8080

# Run the application
CMD ["./main"]
```