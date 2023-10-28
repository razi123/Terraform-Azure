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
    subscription_id     = "7ca5fc28-3bbc-47b0-960d-4dba56edc701"
    tenant_id           = "208effc2-b43b-40b9-a5b1-8882b8d51171"
    skip_provider_registration = true
}

provider "databricks" {

}

data "azurerm_key_vault_secrets" "kv-check" {
  key_vault_id = data.azurerm_key_vault.existing.id
}

data "azurerm_key_vault_secret" "kv-secrets" {
  for_each     = toset(data.azurerm_key_vault_secrets.kv-check.names)
  name         = each.key
  key_vault_id = data.azurerm_key_vault.existing.id
}