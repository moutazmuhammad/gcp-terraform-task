project-id = "iti-2-358616"
region     = "us-central1"
zone       = "us-central1-b"
vpc-name   = "main-vpc"
vpc-id     = module.network.vpc_id

subnet-name = "my-subnet"
subnet-cidr = "10.0.0.0/24"

vm-name  = "private-vm"
vm-type  = "e2-small"
vm-image = "debian-cloud/debian-11"

cluster_name   = "my-cluster"
node_pool_name = "node-pool"
nodes_count    = 2
nodes_type     = "e2-small"
zone-one       = "us-central1-c"
zone-two       = "us-central1-f"


location             = "us-central1"
bucket_count         = 3
bucket_storage_class = "STANDARD"
bucket_age           = 3
versioning           = true

database_name  = "BigQuery"
database_count = 3
