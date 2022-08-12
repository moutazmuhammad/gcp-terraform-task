project-id   = "iti-2-358616"
region       = "us-central1"
zone         = "us-central1-b"
vpc-name     = "main-vpc"
firewall-tag = "bastion-host"

subnet-name = "my-subnet"
subnet-cidr = "10.0.0.0/24"

vm-name  = "private-vm"
vm-type  = "e2-small"
vm-image = "debian-cloud/debian-10"

cluster_name   = "my-cluster"
node_pool_name = "node-pool"
nodes_count    = 1
nodes_type     = "e2-medium"
zone-one       = "us-central1-c"
zone-two       = "us-central1-f"


location             = "us-central1"
bucket_count         = 3
bucket_storage_class = "STANDARD"
bucket_age           = 3
versioning           = true
bucket_role          = "roles/storage.objectViewer"

database_name  = "BigQuery"
database_count = 3

# vm-roles      = ["roles/storage.objectViewer", "roles/bigquery.admin", "roles/container.admin"]
cluster-roles = ["roles/storage.admin"]

iap-role        = "roles/iap.tunnelResourceAccessor"
iap-role-member = "user:moutazmuhamad@gmail.com"