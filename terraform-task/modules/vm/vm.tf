resource "google_compute_instance" "private-vm" {
  name         = var.vm-name
  machine_type = var.vm-type
  zone         = var.zone

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.vm-image
    }
  }

  tags = ["bastion-host"]
  
  network_interface {
    subnetwork = var.subnet_self_link
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.bigquery_and_bucket_user_sa.email # google_service_account.bigquery_admin_sa.email
    scopes = ["cloud-platform"] 

  }
  
}



# IAP for DevOps to access VM through SSH

resource "google_iap_tunnel_instance_iam_member" "instance" {
  project = var.project_id
  zone = var.zone
  instance = google_compute_instance.private-vm.name
  role = "roles/iap.tunnelResourceAccessor"
  member   = "user:moutazmuhammad1997@gmail.com"
  depends_on = [google_compute_instance.private-vm]
}