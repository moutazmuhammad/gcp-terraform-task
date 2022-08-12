# we need to create Cloud Router to advertise routes. 
# It will be used with the NAT gateway to allow VMs without public IP addresses to access the internet

resource "google_compute_router" "router" {
  name    = var.route_name 
  region  = var.region
  network = google_compute_network.vpc_network.id
}