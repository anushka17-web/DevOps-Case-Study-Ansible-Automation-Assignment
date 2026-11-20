# DevOps-Case-Study-Ansible-Automation-Assignment

## Project Overview

This project demonstrates the containerization and orchestration of a web application using Docker and Kubernetes. The application is packaged into a Docker image and deployed on an AWS EC2 Ubuntu instance using K3s, a lightweight Kubernetes distribution.

The deployment uses multiple application replicas to demonstrate container orchestration, service exposure and scalable application hosting.

## Technologies & Tools

| Technology | Purpose |
|---|---|
| AWS EC2 | Cloud infrastructure for hosting |
| Ubuntu | Operating system |
| Docker | Application containerization |
| Kubernetes (K3s) | Container orchestration |
| Nginx | Web server |
| HTML & CSS | Frontend development |

## Repository Structure

```text
cloud-native-web-app/
│
├── index.html
├── Dockerfile
├── deployment.yaml
├── service.yaml
└── README.md
```

### File Description

- **index.html:** Contains the frontend structure of the web application.
- **Dockerfile:** Defines the instructions for building the application container image.
- **deployment.yaml:** Specifies the Kubernetes deployment configuration and application replicas.
- **service.yaml:** Configures NodePort service access to the deployed application.
- **README.md:** Provides project documentation and deployment instructions.

## Implementation Workflow

### 1. Build the Docker Image

Navigate to the project directory and build the application image:

```bash
sudo docker build -t cnd-web-app:v1 .
```

### 2. Deploy the Application on Kubernetes

Apply the Kubernetes deployment configuration:

```bash
sudo kubectl apply -f deployment.yaml
```

Expose the application through a NodePort service:

```bash
sudo kubectl apply -f service.yaml
```

### 3. Verify the Deployment

Check the Kubernetes deployment status:

```bash
sudo kubectl get deployments
```

Check the running application pods:

```bash
sudo kubectl get pods
```

Check the available services:

```bash
sudo kubectl get services
```

## Deployment Results

The reported deployment configuration and results are:

| Parameter | Result |
|---|---|
| Kubernetes Platform | K3s |
| Desired Replicas | 2 |
| Available Replicas | 2 |
| Application Pods | 2 Running |
| Service Type | NodePort |
| NodePort | 30080 |

## Application Access

The deployed web application is accessible through the EC2 public IP and configured NodePort.

**Application URL:**

http://3.26.171.122:30080

## Project Highlights

- Containerized web application using Docker.
- Kubernetes-based application deployment.
- Multiple replicas for application availability.
- External application access using NodePort.
- Cloud hosting through AWS EC2.
- Practical exposure to container orchestration and cloud-native technologies.

## Student Information

**Name:** Anushka Ghule  
**PRN / Roll Number:** 202301070127  
**Branch:** Electronics and Telecommunication (E&TC)  
**Semester:** 7th  
**Subject:** Cloud Native DevOps (MDM)

---

*This repository documents a cloud-native deployment workflow using Docker, Kubernetes and AWS EC2.*
