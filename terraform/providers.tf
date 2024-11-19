provider "google" {
  project     = var.google_project
  region      = var.google_region
  credentials = file("/tmp/gcp-key.json")
}
