#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="tien4dev/udahousefx"
tagname="latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udahousefx --image="${dockerpath}:${tagname}" --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udahousefx 8000:80
