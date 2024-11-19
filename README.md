# Service Account Permissions for Infrastructure and Deployment

## Required Roles

### 1. Artifact Registry Reader
- **Purpose**: Allows the service account to pull Docker images from the Google Artifact Registry for Cloud Run deployment.

### 2. Artifact Registry Writer
- **Purpose**: Allows the service account to push Docker images to the Google Artifact Registry during the CI/CD pipeline build process.

### 3. Cloud Run Admin
- **Purpose**: Grants full control over Cloud Run services, enabling the deployment and management of Cloud Run resources.

### 4. Cloud Run Invoker
- **Purpose**: Allows the service account to grant unauthenticated access (`allUsers`) to the Cloud Run service.

### 5. Storage Admin
- **Purpose**: Provides full control over Google Cloud Storage buckets and objects, enabling Terraform to manage backend state (read/write/delete Terraform state files).

### 6. Service Account User
- **Purpose**: Enables the service account to impersonate itself or other service accounts during resource deployment.

## Notes
- This configuration follows the principle of **least privilege** and ensures that only the necessary permissions are granted to the service account.
- If additional access is required for specific operations, roles can be adjusted accordingly.
