variable "cluster_name" {
  type = string
}

variable "region" {
  type = string
}

variable "network_self_link" {
  type = string
}

variable "subnet_self_link" {
  type = string
}

variable "project_id" {
  type = string
}

variable "zone-one" {
  type = string
}

variable "zone-two" {
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

variable "gke_cluster_sa_email" {
    type = string
}