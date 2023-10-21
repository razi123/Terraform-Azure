terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.76.0"
    }
  }
}

# Authentication to Azure 
provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "resource_group"{
    name = "rg_benz"   #"var.my_resource_group_name"
    location = "westeurope" # var.my_resource_group_location
}
