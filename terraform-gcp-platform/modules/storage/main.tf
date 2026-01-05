resource "google_storage_bucket" "bucket" {
  name          = "${var.project_id}-app-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition { age = 30 }
    action    { type = "Delete" }
  }
}
