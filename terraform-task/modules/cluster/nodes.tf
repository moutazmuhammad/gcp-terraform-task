resource "google_container_node_pool" "node-pool" {
  name       = var.node_pool_name
  cluster    = google_container_cluster.primary.id
  node_count = var.nodes_count
  node_locations = [
    var.zone-one,
    var.zone-two
  ]

  node_config {
    preemptible  = false
    machine_type = var.nodes_type
    disk_size_gb = 100

    service_account = google_service_account.container_registory_admin_sa.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}