variable "project_id" {
  description = "The ID of the project in which to create resources"
  type        = string
}

variable "region" {
  description = "The region in which to create resources"
  type        = string
}
variable "zone" {
  description = "The zone in which to create resources"
  type        = string
}
variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}
variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}
variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}
variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
}
variable "machine_type" {
  description = "The machine type for the nodes"
  type        = string
}
variable "node_count" {
  description = "The number of nodes in the node pool"
  type        = number
  default     = 1
}
variable "disk_size_gb" {
  description = "The size of the disk for each node in GB"
  type        = number
  default     = 10
}
variable "disk_type" {
  description = "The type of disk for each node (e.g., pd-standard, pd-ssd)"
  type        = string
  default     = "pd-standard"
}
variable "image_type" {
  description = "The image type for the nodes (e.g., COS, UBUNTU)"
  type        = string
  default     = "COS_CONTAINERD"
}
variable "service_account_email" {
  description = "existing service account to use for the nodes"
  type        = string
}
variable "deletion_protection" {
  description = "Whether to enable deletion protection for the cluster"
  type        = bool
  default     = false
}