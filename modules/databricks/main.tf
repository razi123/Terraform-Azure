
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.76.0"
    }

    databricks = {
      source  = "databricks/databricks"
      version = "1.0.0"
    }
  }
}

# add resource group
resource "azurerm_resource_group" "resource_group_name" {
  name = var.resource_group_name
  location = var.location
}

# add datbricks workspace
resource "azurerm_databricks_workspace" "DB_workspace" {
  name                = "databricks-workspace-dev"
  resource_group_name = azurerm_resource_group.resource_group_name.name
  location            = azurerm_resource_group.resource_group_name.location
  sku                 = "standard"
  managed_resource_group_name = "managed-emea-databricks"
  #public_network_access_enabled = false
}