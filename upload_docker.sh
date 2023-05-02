#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
localtag="udahousefx"
dockerpath="tien4dev/udahousefx"
tagname="latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag "$localtag" "${dockerpath}:${tagname}"

# Step 3:
# Push image to a docker repository
docker push "${dockerpath}:${tagname}"