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
    skip_provider_registration = true
    client_id           = data.azurerm_key_vault_secret.client_id.value
    client_secret       = data.azurerm_key_vault_secret.client_secret.value
    subscription_id     = "7ca5fc28-3bbc-47b0-960d-4dba56edc701"
    tenant_id           = "208effc2-b43b-40b9-a5b1-8882b8d51171"
}

provider "databricks" {

}