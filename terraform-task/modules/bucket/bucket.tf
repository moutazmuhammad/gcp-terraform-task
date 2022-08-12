resource "google_storage_bucket" "my_bucket" {
  name          = "${var.project_id}-${count.index}"
  project       = var.project_id
  location      = var.location
  force_destroy = var.force_destroy #true
  count         = var.bucket_count 
  storage_class = var.bucket_storage_class

  versioning {
    enabled = var.versioning
  }

}

resource "google_storage_bucket_iam_binding" "binding" {
  count =  var.bucket_count
  bucket = google_storage_bucket.my_bucket[count.index].name
  role = var.bucket_role
  members = ["serviceAccount:${var.SA}"]
}