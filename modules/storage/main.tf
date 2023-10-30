terraform {
  required_providers {  
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.76.0"
    }

    databricks = {
      source = "databricks/databricks"
      version = "1.0.0"
    }
  }
}

# Authentication to Azure
provider "azurerm" {
    features {}
    # skip_provider_registration = true
}

# add Resource Group
resource "azurerm_resource_group" "resource_group"{
    name = var.resource_group_name.default
    location = var.location.default
}