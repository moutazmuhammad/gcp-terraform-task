variable "project-id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "zone-one" {
  type = string
}

variable "zone-two" {
  type = string
}

variable "vpc-name" {
  type = string
}

variable "subnet-name" {
  type = string
}

variable "subnet-cidr" {
  type = string
}

variable "vm-name" {
  type = string
}

variable "vm-type" {
  type = string
}

variable "vm-image" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "node_pool_name" {
  type = string
}

variable "nodes_count" {
}

variable "nodes_type" {
  type = string
}

variable "bucket_count" {
  default = 3
}

variable "location" {
  type = string
}

variable "bucket_storage_class" {
  type = string
}

variable "bucket_age" {
  default = 3
}

variable "versioning" {
}

variable "database_name" {
  type = string
}

variable "database_count" {
  default = 3
}

variable "vm-roles" {
  description = "this is list of roles for vm"
  type        = list
  default = ["roles/storage.objectViewer", "roles/bigquery.admin", "roles/container.admin"]
}

variable "cluster-roles" {
  description = "this is list of roles for GKE cluster"
  type        = list
  default = ["roles/storage.admin"]
}

variable "iap-role" {
  type = string
}

variable "iap-role-member" {

}