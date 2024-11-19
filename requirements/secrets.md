# Secrets Configuration for Deployment

This section explains the required secrets for your CI/CD pipeline and their purposes.

## Secrets and Their Values

### 1. `GCP_CREDENTIALS`
- **Value**: The JSON key file of the Google Cloud service account.
- **Purpose**: Used to authenticate the CI/CD pipeline with Google Cloud to manage resources like Artifact Registry, Cloud Run, and GCS.

### 2. `GCP_PROJECT_ID`
- **Value**: The ID of your Google Cloud project (e.g., `my-project-id`).
- **Purpose**: Specifies the Google Cloud project where resources will be managed.

### 3. `GCP_REGION`
- **Value**: The region where your Google Cloud resources are deployed (e.g., `us-central1`).
- **Purpose**: Indicates the region for deploying resources like Cloud Run and Artifact Registry.

### 4. `GCP_REPOSITORY`
- **Value**: The name of your Google Artifact Registry repository (e.g., `my-repo`).
- **Purpose**: Specifies the repository to push and pull Docker images.

### 5. `GCS_BUCKET_NAME`
- **Value**: The name of your Google Cloud Storage bucket (e.g., `my-terraform-state-bucket`).
- **Purpose**: Used to store Terraform state files for backend management.

## Notes
- Ensure all secrets are securely stored in your CI/CD platform (e.g., GitHub Actions Secrets or GitLab CI/CD Variables).
- Do not expose these secrets in logs or output during pipeline execution.
