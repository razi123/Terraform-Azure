module "remote_state" {
  source                      = "./modules/remote-state"
  remote_resource_group_name  = var.remote_resource_group_name
  remote_storage_account_name = var.remote_storage_account_name
  remote_container_name       = var.remote_container_name
}

module "databricks" {
  source              = "./modules/databricks"
  resource_group_name = var.resource_group_name
  location            = var.location
}