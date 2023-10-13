#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="trithm/udacity-microservices-espeon"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-microservices-espeon \
    --image=$dockerpath \
    --port=80 --labels app=udacity-microservices-espeon

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-microservices-espeon 8000:80