variable "resource_group_name_commons" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "flow-emea-commons"
}

variable "storage_account_name_commons" {
  description = "Name of the Azure storage account commons"
  type        = string
  default     = "flowstoragecommons"
}

variable "location" {
  description = "Location of the Azure Resource Group"
  type        = string
  default     = "westeurope"
}

variable "vnet-emea-commons" {
  description = "vnet_name for storage emea commons"
  type        = string
  default     = "flow-vnet-commons"
}

variable "subnet-emea-commons" {
  description = "subnet name for storage emea commons"
  type        = string
  default     = "flow-subnet-commons"
}

