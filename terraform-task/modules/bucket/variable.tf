variable "project_id" {
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

variable "bucket_role" {
  type = string
}

variable "SA" {
  type = string
}