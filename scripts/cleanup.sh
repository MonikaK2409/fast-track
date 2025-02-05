#!/bin/bash
# Remove stopped containers
docker container prune -f

# Remove unused images
docker image prune -f

echo "Docker cleanup completed."
