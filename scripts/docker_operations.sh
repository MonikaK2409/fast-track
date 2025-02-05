#!/bin/bash
IMAGE_NAME=$1
CONTAINER_NAME="test_container"

# Pull Docker Image
echo "Pulling Docker image: $IMAGE_NAME"
docker pull $IMAGE_NAME

# Run Docker Image
echo "Running Docker container..."
docker run --name $CONTAINER_NAME -d $IMAGE_NAME

# Verify Execution
echo "Verifying the container status..."
docker ps -a

# Log Output
docker logs $CONTAINER_NAME > ../build_log.txt
