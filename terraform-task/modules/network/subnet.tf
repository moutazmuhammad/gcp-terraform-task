resource "google_compute_subnetwork" "private-subnet" {
  name                     = var.subnet-name
  ip_cidr_range            = var.subnet-cidr
  region                   = var.region
  network                  = google_compute_network.vpc_network.id

  secondary_ip_range {   # For Pods of cluster
    range_name    = "k8s-pod-range"
    ip_cidr_range = "10.48.0.0/16"
  }

  secondary_ip_range { # For services of cluster
    range_name    = "k8s-service-range"
    ip_cidr_range = "10.52.0.0/26"
  }

  private_ip_google_access = var.private_ip_google_access

}