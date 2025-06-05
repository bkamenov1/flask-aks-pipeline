# Flask API with Docker and Azure Kubernetes Service (AKS)

This project demonstrates how to build a simple Python Flask API, containerize it using Docker, and deploy it to Azure Kubernetes Service (AKS). It also includes an Azure DevOps pipeline to automate the build and deployment process.

## Features

- Python Flask REST API  
- Docker containerization  
- Deployment to Azure Kubernetes Service (AKS)  
- Continuous Integration and Continuous Deployment (CI/CD) using Azure DevOps Pipelines  
- Container images stored in Azure Container Registry (ACR)  

## Prerequisites

- Azure subscription  
- Azure CLI installed and configured  
- Docker installed  
- Azure DevOps project with pipeline permissions  
- Kubernetes CLI (`kubectl`) installed and configured for your AKS cluster  

## Project Structure

flask-k8s-pipeline/
│
├── app/
│ ├── app.py
│ └── requirements.txt
│
├── Dockerfile
├── azure-pipelines.yml
├── k8s-deployment.yml
├── k8s-service.yml
└── README.md

Deployment to AKS
Push the Docker image to Azure Container Registry (ACR).

Deploy the application to AKS by applying the Kubernetes manifests:

bash
Copy
Edit
kubectl apply -f k8s-deployment.yml
kubectl apply -f k8s-service.yml
Access the Flask API via the external IP assigned by the Kubernetes service.

CI/CD Pipeline
The azure-pipelines.yml file defines an Azure DevOps pipeline that:

Builds the Docker image

Pushes the image to Azure Container Registry (ACR)

Deploys the updated application to Azure Kubernetes Service (AKS)

Author
Boyan Kamenov