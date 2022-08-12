variable "project-id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
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

variable "vpc_id" {
  type = string
}

variable "iap-vm-name" {
  type = string
}

variable "iap-role" {
  type = string
}

variable "iap-role-member" {

}

variable "firewall-tag" {
  type = string
}

variable "nat_name" {
  type = string
  default = "my-nat"
}

variable "route_name" {
  type = string
  default = "my-router"
}

variable "auto_create_subnetworks" {
  type = bool
  default = false
}

variable "vpc_mtu" {
  type = number
  default = 1460
}

variable "delete_default_routes_on_create" {
  type = bool
  default = false
}


variable "pod_secondary_ip_range_range_name" {
  type = string
  default = "k8s-pod-range"
}

variable "pod_secondary_ip_range_range_cidr" {
  type = string
  default = "10.48.0.0/16"
}

variable "service_secondary_ip_range_range_name" {
  type = string
  default = "k8s-service-range"
}

variable "service_secondary_ip_range_range_cidr" {
  type = string
  default = "10.52.0.0/26"
}