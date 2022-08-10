resource "google_service_account" "private_vm_sa" {
  account_id = "private-vm-sa-${var.project_id}"
  display_name = "private-vm-sa"
}

resource "google_project_iam_binding" "private_vm_roles"{
    project = var.project_id
    count = length(var.vm-roles)
    role = "${var.vm-roles[count.index]}"
    members=[
      "serviceAccount:${google_service_account.private_vm_sa.email}"
      ]
    depends_on = [google_service_account.private_vm_sa]
}



resource "google_service_account" "gke_cluster_sa" {
  account_id = "gke-cluster-sa-${var.project_id}"
  display_name = "gke-cluster-sa"
}

resource "google_project_iam_binding" "cluster_roles"{
    project = var.project_id
    count = length(var.cluster-roles)
    role = "${var.cluster-roles[count.index]}"
    members=[
      "serviceAccount:${google_service_account.gke_cluster_sa.email}"
      ]
    depends_on = [google_service_account.gke_cluster_sa]
}