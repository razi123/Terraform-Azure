variable "resource_group_name" {
  default = "flow-emea-RG"
}

variable "location" {
  description = "Location of the Azure Resource Group"
  type        = string
  default     = "westeurope"
}

variable "remote_resource_group_name" {
  description = "Remote state resource group"
  type        = string
  default     = "security-RG"
}

variable "remote_storage_account_name" {
  description = "Location of the Azure storage account"
  type        = string
  default     = "status2tform"
}

variable "remote_container_name" {
  description = "Remote state container name"
  type        = string
  default     = "remotestate"
}