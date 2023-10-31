# provider in registry

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


# Authentication to Azure
provider "azurerm" {
  features {}
  # skip_provider_registration = true
}

provider "databricks" {
  host = azurerm_databricks_workspace.DB_workspace.workspace_url

}