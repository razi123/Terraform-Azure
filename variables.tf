variable "resource_group_name" {
  default = "benz_rg"
}
variable "location" {
  default = "westeurope"
}


variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "databricks_cluster_name" {
  default = "test-cluster"
}


variable "spark_version" {
  type    = string
  default = "8.2.x-scala2.12"
}

variable "driver_node_type_id" {
  type    = string
  default = "Standard_F4s"
}

variable "node_type_id" {
  type    = string
  default = "Standard_F4s"
}


# variable "client_id" {
#   default = "81039d54-e89a-4794-a379-e0229c6c0982"
# }

# variable "client_secret" {
#   default = "2Ik8Q~8~sRPZfBp406iSLalz9REuFwYtgMLMgb7c"
# }

# variable "subscription_id" {
#   default = "7ca5fc28-3bbc-47b0-960d-4dba56edc701"
# }

# variable "tenant_id" {
#   default = "208effc2-b43b-40b9-a5b1-8882b8d51171"
# }

