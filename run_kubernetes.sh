#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="denisan348/predictionimg:UD_Proj5"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment microprediction --image=$dockerpath

# Step 3:
# List kubernetes pods after 1 min
sleep 60
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/microprediction 8000:80

# Get logs from the pod(s) of this deployment AFTER "make_prediction.sh" has been run.
kubectl logs deployment/microprediction