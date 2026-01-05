module "network" {
  source     = "./modules/network"
  project_id = var.project_id
  region     = var.region
}

module "iam" {
  source     = "./modules/iam"
  project_id = var.project_id
}

module "compute" {
  source     = "./modules/compute"
  project_id = var.project_id
  region     = var.region
  network    = module.network.network_name
  subnetwork = module.network.subnet_name
  service_account = module.iam.service_account_email
}

module "storage" {
  source     = "./modules/storage"
  project_id = var.project_id
}
