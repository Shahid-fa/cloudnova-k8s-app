#!/bin/bash
# Build and push Docker image script

IMAGE_NAME="your-dockerhub-username/cloudnova"
TAG="latest"

docker build -t $IMAGE_NAME:$TAG .
docker push $IMAGE_NAME:$TAG