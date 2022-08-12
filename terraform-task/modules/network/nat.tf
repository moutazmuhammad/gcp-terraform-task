resource "google_compute_router_nat" "nat" {
  name   = var.nat_name 
  router = google_compute_router.router.name
  region = var.region

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS" # A list of Subnetworks are allowed to Nat (specified in the field subnetwork below)
  subnetwork {
    name                    = google_compute_subnetwork.private-subnet.name
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ip_allocate_option = "MANUAL_ONLY" # Since we will  allocate External IP addresses ourselves, we need to provide them in the nat_ips field
  nat_ips                = [google_compute_address.ip_nat.self_link]
}


# The following resource is to allocate IP.
resource "google_compute_address" "ip_nat" {
  name         = "ip-nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"

  depends_on = [google_project_service.compute]
}