# provider in registry

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
    client_id           = var.client_id
    client_secret       = var.client_secret
    subscription_id     = "7ca5fc28-3bbc-47b0-960d-4dba56edc701"
    tenant_id           = "208effc2-b43b-40b9-a5b1-8882b8d51171"
    skip_provider_registration = true
}

provider "databricks" {

}