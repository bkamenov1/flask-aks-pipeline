# Flask API with Docker and Azure Kubernetes Service (AKS)

This project shows how to build a simple Python Flask API, containerize it with Docker, and deploy it to Azure Kubernetes Service (AKS). It also uses an Azure DevOps pipeline for CI/CD to automate building, pushing, and deploying the app.

## Features
- Python Flask REST API
- Docker containerization
- Deployment to AKS
- CI/CD with Azure DevOps Pipelines
- Images stored in Azure Container Registry (ACR)

## Deployment
1. Push Docker image to Azure Container Registry (ACR).
2. Deploy to AKS using Kubernetes manifests
3. Access the Flask API via the external IP assigned by AKS.

## CI/CD Pipeline
The `azure-pipelines.yml` automates:
- Building the Docker image
- Pushing it to ACR
- Deploying to AKS

🩺 Monitoring with Azure Monitor
This project integrates Azure Monitor to provide observability into the AKS cluster.

🔧 What’s Included
Log Analytics Workspace for collecting logs and metrics

AKS diagnostic settings to send logs to Log Analytics

Bicep template to automate provisioning
## Author
Boyan Kamenov
