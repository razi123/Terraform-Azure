# data "azurerm_client_config" "current" {
# }
# add second resoruce group
resource "azurerm_resource_group" "resource group_name" {
  name = var.resource_group_name
  location = var.location
}

# add datbricks workspace
resource "azurerm_databricks_workspace" "DB_workspace" {
  name                = "databricks-workspace-dev"
  resource_group_name = var.resource_group_name
  location            = azurerm_resource_group.resource_group.location
  sku                 = "standard"
  managed_resource_group_name = "managed-resource-group-databricks"
  public_network_access_enabled = false
}

provider "databricks" {
  azure_workspace_resource_id = azurerm_databricks_workspace.DB_workspace.id
  # azure_client_id     = var.client_id
  # azure_client_secret = var.client_secret
  # azure_tenant_id     = var.tenant_id
}

# define databricks cluster
resource "databricks_cluster" "cluster_conf" {
  cluster_name            = var.databricks_cluster_name
  spark_version           = var.spark_version
  driver_node_type_id     = var.driver_node_type_id
  node_type_id            = var.node_type_id
  num_workers             = 1
  autotermination_minutes = 10
}