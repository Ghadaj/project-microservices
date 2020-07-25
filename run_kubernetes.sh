#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="ghadaj/microservice-project"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run my-pod --image=$dockerpath:latest --port=80 
# Step 3:
# List kubernetes pods  --all-namespaces --no-headers
kubectl get pod --all-namespaces --no-headers
# Step 4:
# Forward the container port to a host
kubectl port-forward my-pod  8000:80

