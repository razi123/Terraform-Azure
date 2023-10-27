terraform {
  required_providers {  # provider in registry
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
  # client_id           = var.client_id
  # client_secret       = var.client_secret
  # subscription_id     = var.subscription_id
  # tenant_id           = var.tenant_id
}

# add Resource Group
resource "azurerm_resource_group" "resource_group"{
    name = "benz_rg"
    location = "westeurope"
}


# add datbricks workspace
resource "azurerm_databricks_workspace" "DB_workspace" {
  name                = "databricks-workspace-dev"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  sku                 = "standard"
  public_network_access_enabled = false
}

provider "databricks" {
    host = azurerm_databricks_workspace.DB_workspace.workspace_url
    azure_workspace_resource_id = azurerm_databricks_workspace.DB_workspace.id
    azure_client_id             = var.client_id #data.azurerm_key_vault_secret.client_id  #var.client_id
    azure_client_secret         = var.client_secret #data.azurerm_key_vault_secret.client_secret #var.client_secret
    azure_tenant_id             = var.tenant_id #data.azurerm_key_vault_secret.tenant_id #var.tenant_id
}

# define databricks cluster
resource "databricks_cluster" "cluster_conf" {
  cluster_name            = "test-cluster"
  spark_version           = var.spark_version
  driver_node_type_id     = var.driver_node_type_id
  node_type_id            = var.node_type_id
  num_workers             = 1
  autotermination_minutes = 10
}



