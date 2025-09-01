# CloudNova Kubernetes Project

This project contains Kubernetes manifests, Helm charts, Dockerfiles, and scripts to deploy the CloudNova application.

## Structure

- `docker/` - Dockerfile and build script
- `k8s/` - Kubernetes manifests
- `helm/cloudnova/` - Helm chart for templated deployment
- `scripts/` - Scripts to setup cluster, join nodes, and deploy app

## Usage

1. Build and push Docker image:

```bash
cd docker
./build.sh