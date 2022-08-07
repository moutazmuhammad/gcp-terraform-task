resource "google_container_cluster" "primary" {
  name                     = var.cluster_name
  location                 = var.region
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = var.network_self_link
  subnetwork               = var.subnet_self_link
#   networking_mode          = "VPC_NATIVE"

  # Optional, if you want multi-zonal cluster
  node_locations = [
    var.zone-one,
    var.zone-two
  ]

  release_channel {  #  upgrades for the Kubernetes control  plane
    channel = "REGULAR"
  }

  # To Make Sure service account inside cluster  Workload Identity 
  # allows Kubernetes service accounts to act as a user-managed Google IAM Service Account.
  workload_identity_config {
    workload_pool = "${var.project_id}.svc.id.goog"
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = "k8s-pod-range"
    services_secondary_range_name = "k8s-service-range"
  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = "172.16.0.0/28"
  }

}