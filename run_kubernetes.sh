#!/usr/bin/env bash

# Download k8
# curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
#  && chmod +x minikube
# sudo mkdir -p /usr/local/bin/
# sudo install minikube /usr/local/bin/

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="ablazleon/ml-ops-api"

# Step 2
# Run the Docker Hub container with kubernetes

# and

# Step 4:
# Forward the container port to a host

# From the docu:
# https://kubernetes.io/docs/tutorials/kubernetes-basics/deploy-app/deploy-interactive/
docker login
kubectl apply -f dpl-svc.yml

# Step 3:
# List kubernetes pods
kubectl get po



