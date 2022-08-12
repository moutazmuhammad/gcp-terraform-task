variable "vm-name" {
  type = string
}

variable "vm-type" {
  type = string
}

variable "zone" {
  type = string
}

variable "vm-image" {
  type = string
}

variable "subnet_self_link" {
  type = string
}

variable "project_id" {
  type = string
}


variable "private_vm_sa_email" {
    type = string
}

variable "firewall-tag" {
  type = string
}

variable "vm_boot_disk_size" {
  type = number
  default = 100
}

variable "vm_boot_disk_type" {
  type = string
  default = "pd-standard"
}
