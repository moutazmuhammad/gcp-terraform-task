# service account for instance 
resource "google_service_account" "bigquery_and_bucket_user_sa" {
  account_id = "bucket-user"
  # depends_on = [google_compute_instance.private-vm]
}

# role to access cluster and container
resource "google_project_iam_binding" "bucket_user_sa"{
    project = var.project_id
    role = "roles/storage.objectViewer"
    members=[
      "serviceAccount:bucket-user@${var.project_id}.iam.gserviceaccount.com",
      ]
    depends_on = [google_service_account.bucket_user_sa]
}


# role to access bigquery
resource "google_project_iam_binding" "bigquery_admin_role"{
    project = var.project_id
    role = "roles/bigquery.admin"
    members=[
      "serviceAccount:bucket-user@${var.project_id}.iam.gserviceaccount.com",
      ]
    depends_on = [google_service_account.bucket_user_sa]
}