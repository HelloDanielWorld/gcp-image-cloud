resource "google_cloud_run_v2_service" "test-service" {
  name                = "test-workflow-service-unseald"
  location            = var.google_region
  deletion_protection = false
  ingress             = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "${var.google_region}-docker.pkg.dev/${var.google_project}/${var.artifact_registry_repo}/my-app:latest"
      ports {
        name           = "http1"
        container_port = 80
      }
    }
  }
}

resource "google_cloud_run_service_iam_member" "allow_unauthenticated" {
  service  = google_cloud_run_v2_service.test-service.name
  location = google_cloud_run_v2_service.test-service.location
  role     = "roles/run.invoker"
  member   = "allUsers"
}
