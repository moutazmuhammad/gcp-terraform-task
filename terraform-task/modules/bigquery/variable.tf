variable "database_name" {
  type = string
}

variable "database_count" {
  default = 3
}

variable "location" {
  type = string
}

variable "SA" {
  type = string
}

variable "default_table_expiration_ms" {
  type = number
  default = 3600000
}

variable "delete_contents_on_destroy" {
  type = bool
  default = true
}

variable "bigquery_access_role" {
  type = string
  default = "READER"
}