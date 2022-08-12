resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "${var.database_name}_${count.index}"
  count = var.database_count
  location                    = var.location
  default_table_expiration_ms = var.default_table_expiration_ms #3600000
  delete_contents_on_destroy  = var.delete_contents_on_destroy #true

  access {
    role          = var.bigquery_access_role  #"READER"
    user_by_email = var.SA
  }
  
}

