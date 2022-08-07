resource "google_service_account" "container_registory_admin_sa" {
  account_id = "kubernetes-admin"
}

# role to access  container registory storage
resource "google_project_iam_binding" "storage"{
    project = var.project_id
    role = "roles/storage.admin"
    members=[
      "serviceAccount:${google_service_account.container_registory_admin_sa.email}"
      ]
    depends_on = [google_service_account.container_registory_admin_sa]
}