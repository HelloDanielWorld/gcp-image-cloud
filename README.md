# GCP Image Cloud

## Overview

The **GCP Image Cloud** project is designed to showcase the deployment of a containerized Node.js application using Google Cloud Platform (GCP) infrastructure. This project leverages Docker, Terraform, and CI/CD workflows to ensure a streamlined and automated deployment pipeline. The final docker image is deployed via Cloud Run.

---

## Features

- **Node.js Application**:
  - A lightweight web server built using the Express framework.
  - The application logic is defined in `app.js`.

- **Containerization**:
  - Dockerized application for portability and scalability.
  - Includes a `Dockerfile` and `.dockerignore` for efficient builds.

- **Infrastructure as Code (IaC)**:
  - Utilizes Terraform to provision cloud resources on GCP.
  - Supports automated infrastructure management and deployment.

- **CI/CD Automation**:
  - GitHub Actions workflows for building, testing, and deploying the application.
  - Ensures continuous integration and deployment practices.

---

## Repository Structure

- `.github/workflows`:
  - Contains GitHub Actions configuration for CI/CD automation.

- `docker-image`:
  - Docker-related files including `Dockerfile` and test application code.

- `requirements`:
  - Additional information in order to completete the workflow

- `terraform`:
  - Terraform files for provisioning GCP infrastructure.

- `README.md`:
  - Project documentation (this file).

---

## Prerequisites

- **Service account**:
  - GCP account with necessary permissions.
    - Information under requirements/serviceAccount.md

- **Cloud Storage Bucket**:
  - To store the Terraform State File (Backend)
  
- **Artifact Registry**:
  - To push the docker image and pull the image for deployment. 
    
- **Secrets**:
  - Set correct values in secrets
    - Information under requirements/secrets.md
   
---

## Deployment Steps

**Workflow Configuration**:
  - Both workflows are configured to be triggered manually, providing flexibility and control over the build and deployment process. 
  - This configuration can be easily modified to suit your preferred triggering mechanism, such as automated triggers based on code commits or schedule-based triggers.

1. **Build Docker Image**:
   - Execute the `image-build.yml` workflow to build the Docker image and push it to the GCP Artifact Registry.

2. **Provision Infrastructure**:
   - Execute the `terraform.yml` workflow to provision and deploy the required infrastructure on GCP using Terraform.


---

## Future Improvements

- Add unit testing to improve application reliability.
- Include monitoring and logging for deployed infrastructure.
- Optimize CI/CD workflows for enhanced performance.

---

## Contributors

- **Daniel (HelloDanielWorld)**: Developer and maintainer of the project.
