variable "project_id" {
  type = string
}

variable "vm-roles" {
  description = "this is list of roles for vm"
  type = list
  default = ["roles/storage.objectViewer", "roles/bigquery.admin", "roles/container.admin"]
}


variable "cluster-roles" {
  description = "this is list of roles for GKE cluster"
  type = list
  default = ["roles/storage.admin"]
}