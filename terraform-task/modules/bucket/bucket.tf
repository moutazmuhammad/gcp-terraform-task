resource "google_storage_bucket" "my_bucket" {
  name          = "${var.project_id}-${count.index}"
  project       = var.project_id
  location      = var.location
  force_destroy = true
  count         = var.bucket_count 
  storage_class = var.bucket_storage_class

  versioning {
    enabled = var.versioning
  }

  # lifecycle_rule {
  #   condition {
  #     age = var.bucket_age
  #   }
  #   action {
  #     type = "Delete"
  #     storage_class = var.bucket_storage_class
  #   }
  # }
}