# GCP Image Cloud

## Overview

The **GCP Image Cloud** project is designed to showcase the deployment of a containerized Node.js application using Google Cloud Platform (GCP) infrastructure. This project leverages Docker, Terraform, and CI/CD workflows to ensure a streamlined and automated deployment pipeline.

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
    - Information under rquirements/serviceAccount.md

- **Secrets**:
  - Set correct values in secrets
    - Information under rquirements/secrets.md
---

## Deployment Steps

1. **Build Docker Image**:
   - Run the `image-build.yml` workflow in order to build and push the image to GCP Artifact Registry.

2. **Provision Infrastructure**:
   - Run the `terraform.yml` workflow in order to provision and deploy the GCP infrastructure via Terraform.

---

## Future Improvements

- Add unit testing to improve application reliability.
- Include monitoring and logging for deployed infrastructure.
- Optimize CI/CD workflows for enhanced performance.

---

## Contributors

- **Daniel (HelloDanielWorld)**: Developer and maintainer of the project.
