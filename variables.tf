variable "resource_group_name" {
  default = "flow-emea-RG"
}

variable "location" {
  description = "Location of the Azure Resource Group"
  type        = string
  default     = "westeurope"
}
