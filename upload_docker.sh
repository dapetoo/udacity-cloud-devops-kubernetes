
#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub to my repository

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath 
dockerpath=dapetoo/flaskapp

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker login -u dapetoo
docker tag flaskapp $dockerpath:latest
docker push $dockerpath:latest