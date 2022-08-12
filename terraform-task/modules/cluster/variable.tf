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

variable "remove_default_node_pool" {
    type = bool
    default = true
}

variable "initial_node_count" {
    type = number
    default = 1
}

variable "release_channel" {
    type = string
    default = "REGULAR"
}

variable "enable_private_nodes" {
    type = bool
    default = true
}

variable "enable_private_endpoint" {
    type = bool
    default = false
}

variable "master_ipv4_cidr_block" {
    type = string
    default = "172.16.0.0/28"
}


variable "node_config_preemptible" {
    type = bool
    default = false
}


variable "node_disk_size_gb" {
    type = number
    default = 100
}