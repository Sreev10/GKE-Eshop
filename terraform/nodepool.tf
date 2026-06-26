resource "google_container_node_pool" "primary_nodes" {

  name     = var.node_pool_name
  location = var.zone
  cluster  = google_container_cluster.gke_cluster.id

  node_count = var.node_count

  node_config {

    machine_type = var.machine_type

    disk_size_gb = var.disk_size_gb

    disk_type = var.disk_type

    image_type = var.image_type

    service_account = var.service_account_email

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}