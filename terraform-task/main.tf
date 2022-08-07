module "network" {
  source      = "./modules/network"
  project-id  = var.project-id
  zone        = var.zone
  region      = var.region
  vpc-name    = var.vpc-name
  vpc_id      = module.network.vpc_id
  subnet-name = var.subnet-name
  subnet-cidr = var.subnet-cidr
}

module "vm" {
  source           = "./modules/vm"
  project_id       = var.project-id
  vm-name          = var.vm-name
  vm-type          = var.vm-type
  zone             = var.zone
  vm-image         = var.vm-image
  subnet_self_link = module.network.subnet_self_link
}

module "cluster" {
  source            = "./modules/cluster"
  cluster_name      = var.cluster_name
  region            = var.region
  zone-one          = var.zone-one
  zone-two          = var.zone-two
  network_self_link = module.network.network_self_link
  subnet_self_link  = module.network.subnet_self_link
  project_id        = var.project-id
  node_pool_name    = var.node_pool_name
  nodes_count       = var.nodes_count
  nodes_type        = var.nodes_type
}

module "bucket" {
  source               = "./modules/bucket"
  project_id           = var.project-id
  bucket_count         = var.bucket_count
  location             = var.location
  bucket_storage_class = var.bucket_storage_class
  bucket_age           = var.bucket_age
  versioning           = var.versioning
}

module "bigquery" {
  source         = "./modules/bigquery"
  database_name  = var.database_name
  database_count = var.database_count
  location       = var.location
}