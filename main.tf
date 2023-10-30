module "azure_storage" {
  source              = "./modules/storage"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# module "databricks" {
#   source                   = "./modules/databricks"
#   resource_group_name = var.resource_group_name
#   location                 = var.location
#   client_id                = var.client_id
#   client_secret            = var.client_secret
#   tenant_id                = var.tenant_id
#   databricks_cluster_name  = var.databricks_cluster_name
#   spark_version            = var.spark_version
#   driver_node_type_id      = var.driver_node_type_id
#   node_type_id             = var.node_type_id
# }

# # add Resource Group
# resource "azurerm_resource_group" "resource_group"{
#     name = "benz_rg"
#     location = "westeurope"

# }


# # add datbricks workspace
# resource "azurerm_databricks_workspace" "DB_workspace" {
#   name                = "databricks-workspace-dev"
#   resource_group_name = azurerm_resource_group.resource_group.name
#   location            = azurerm_resource_group.resource_group.location
#   sku                 = "standard"
#   managed_resource_group_name = "managed-resource-group-databricks"
#   #pblic_network_access_enabled = false
# }

# // create PAT token to provision entities within workspace
# resource "databricks_token" "pat" {
#   provider = databricks
#   comment  = "Terraform Provisioning"
#   // 100 day token
#   lifetime_seconds = 864000
# }

# data "databricks_group" "admins" {
#   display_name = "admins"
#   depends_on = [azurerm_databricks_workspace.DB_workspace]
# }

# resource "databricks_service_principal" "sp" {
#   application_id       = "81039d54-e89a-4794-a379-e0229c6c0982"
#   display_name         = "Service principal"
#   allow_cluster_create = true
# }

# resource "databricks_group_member" "i-am-admin" {
#   group_id  = data.databricks_group.admins.id
#   member_id = databricks_service_principal.sp.id
# }

# data "databricks_node_type" "smallest" {
# }

# resource "databricks_instance_pool" "pool" {
#     instance_pool_name = "Smallest Nodes"
#     min_idle_instances = 0
#     max_capacity       = 10
#     node_type_id       = data.databricks_node_type.smallest.id

#     idle_instance_autotermination_minutes = 10
# }

# resource "databricks_token" "pat" {
#   provider = databricks.created_workspace
#   comment  = "Terraform Provisioning"
#   // 10 day token
#   lifetime_seconds = 864000
# }



# #define databricks cluster
# resource "databricks_cluster" "cluster_conf" {
#   cluster_name            = "test-cluster"
#   spark_version           = "8.2.x-scala2.12"
#   driver_node_type_id     = "Standard_F4s"
#   node_type_id            = "Standard_F4s"
#   num_workers             = 1
#   autotermination_minutes = 10

#   spark_conf = {
#     "spark.databricks.io.cache.enabled" : true
#   }
# }
