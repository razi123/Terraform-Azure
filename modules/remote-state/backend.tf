terraform {
  backend "azurerm" {
    resource_group_name   = var.remote_resource_group_name
    storage_account_name  = var.remote_storage_account_name
    container_name        = var.remote_container_name
    key                   = "terraform.tfstate" 
  }
}
