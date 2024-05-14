#!/bin/bash
set -e

echo "$DOCKER_REGISTRY_PASSWORD" | docker login -u "$DOCKER_REGISTRY_USERNAME" --password-stdin

# Pull the Docker image
docker pull adrifok/simple-python-flask-app

# Start the container
docker run -d -p 80:80 adrifok/simple-python-flask-app

# Pull the Docker image from Docker Hub
docker pull adrifok/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 5000:5000 adrifok/simple-python-flask-app
