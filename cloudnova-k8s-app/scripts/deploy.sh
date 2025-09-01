#!/bin/bash
# Deploy CloudNova app using kubectl or Helm

set -e

NAMESPACE=cloudnova

if command -v helm &> /dev/null
then
    echo "Deploying with Helm..."
    helm upgrade --install cloudnova helm/cloudnova --namespace $NAMESPACE --create-namespace
else
    echo "Helm not found, deploying raw manifests..."
    kubectl apply -f k8s/namespace.yaml
    kubectl apply -f k8s/configmap.yaml
    kubectl apply -f k8s/secret.yaml
    kubectl apply -f k8s/storage.yaml
    kubectl apply -f k8s/deployment.yaml
    kubectl apply -f k8s/service.yaml
    kubectl apply -f k8s/ingress.yaml
fi

echo "Deployment complete."