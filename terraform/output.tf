# project ID

output "project_id" {
  value       = var.project_id
  description = "The ID of the GCP project."
}

# cluster name 
output "cluster_name" {
  value       = var.cluster_name
  description = "The name of the GKE cluster."
}

# cluster endpoint
output "cluster_endpoint" {
  value       = google_container_cluster.gke_cluster.endpoint
  description = "The endpoint of the GKE cluster."
}

# cluster location
output "cluster_location" {
  value       = google_container_cluster.gke_cluster.location
  description = "The location of the GKE cluster."
}

# VPC name 
output "vpc_name" {
  value       = data.google_compute_network.VPC.name
  description = "The name of the VPC network."
}

# subnet name 
output "subnet_name" {
  value       = data.google_compute_subnetwork.subnet.name
  description = "The name of the subnet."
}

 #node pool name
output "node_pool_name" {
value = google_container_node_pool.primary_nodes.name
description = "The name of the node pool."
}