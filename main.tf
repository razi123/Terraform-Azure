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
  subscription_id = "7ca5fc28-3bbc-47b0-960d-4dba56edc701"
  client_id = "45bcf450-c37e-448e-976c-cecda4b9ddbf"
  client_secret = "DAK8Q~L-Lx55bfI7GzYbpEav-3J-fV46wFCLwavW"
  tenant_id = "208effc2-b43b-40b9-a5b1-8882b8d51171"
  skip_provider_registration = true
}

resource "azurerm_resource_group" "resource_group"{
    name = "rg_benz"
    location = "West Europe"
}