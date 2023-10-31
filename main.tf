# module "azure_storage" {
#   source                       = "./modules/storage"
#   resource_group_name_commons  = var.resource_group_name_commons
#   storage_account_name_commons = var.storage_account_name_commons
#   location                     = var.location
#   vnet-emea-commons            = var.vnet-emea-commons
#   subnet-emea-commons          = var.subnet-emea-commons

# }

module "databricks" {
  source              = "./modules/databricks"
  resource_group_name = var.resource_group_name
  location            = var.location
}