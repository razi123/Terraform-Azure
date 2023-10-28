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



# add Resource Group
resource "azurerm_resource_group" "resource_group"{
    name = var.resource_group_name.default
    location = var.location.default
}