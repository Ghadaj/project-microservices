#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="ghadaj/microservice-project"
# Step 2:  
# Authenticate & tag
docker tag api  ghadaj/microservice-project
echo "Docker ID and Image: $dockerpath"
docker login -u ghadaj -p Ghada153


# Step 3:
# Push image to a docker repository
#sudo docker push dockerpath
docker push $dockerpath

