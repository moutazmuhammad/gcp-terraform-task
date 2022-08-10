# This firewall will allow sshing through iap only
# We don't need to create any firewalls manually for GKE

resource "google_compute_firewall" "allow-ssh" {
  project       = var.project-id
  name          = "allow-ssh-from-iap"
  network       = google_compute_network.vpc_network.name
  source_ranges = ["35.235.240.0/20"]   # This range contains all IP addresses that IAP uses for TCP forwarding.
  allow {
    protocol = "tcp"
  }

  target_tags = [ "bastion-host" ]
}

# IAP for DevOps to access VM through SSH
resource "google_iap_tunnel_instance_iam_member" "instance" {
  project = var.project-id
  zone = var.zone
  instance = var.iap-vm-name #google_compute_instance.private-vm.name
  role = var.iap-role #"roles/iap.tunnelResourceAccessor"
  member   = var.iap-role-member #"user:moutazmuhammad1997@gmail.com"
  # depends_on = [google_compute_instance.private-vm]
}