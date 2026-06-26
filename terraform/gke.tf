resource "google_container_cluster" "gke_cluster" {
  depends_on = [google_project_service.required_apis]
  name       = var.cluster_name
  location   = var.zone

  network    = data.google_compute_network.VPC.id
  subnetwork = data.google_compute_subnetwork.subnet.id

  remove_default_node_pool = true
  initial_node_count       = var.node_count
  deletion_protection = var.deletion_protection

  }
  

  

#}

