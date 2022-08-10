output "private-vm-sa-email" {
  value = google_service_account.private_vm_sa.email
}

output "gke-cluster-sa-email" {
  value = google_service_account.gke_cluster_sa.email
}