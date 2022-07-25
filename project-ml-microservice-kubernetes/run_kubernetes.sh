#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=yamzee/proj

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy proj --image=yamzee/dockerhub:proj

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward proj-648ffb659b-xmk7r 8000:80
