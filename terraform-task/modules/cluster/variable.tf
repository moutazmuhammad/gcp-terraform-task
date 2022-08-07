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
    default = 3
}

variable "nodes_type" {
    type = string
}