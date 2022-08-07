# This firewall will allow sshing through iap only

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