data "google_compute_network" "VPC" {
  name    = var.network_name
  project = var.project_id

}
data "google_compute_subnetwork" "subnet" {
  name    = var.subnet_name
  project = var.project_id
  region  = var.region
}