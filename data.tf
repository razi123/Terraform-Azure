data "azurerm_key_vault_secret" "client_id" {
  name         = "ServicePrincipalClientId"
  key_vault_id = "kv-razi"
}

data "azurerm_key_vault_secret" "client_secret" {
  name         = "ServicePrincipalClientSecret"
  key_vault_id = "kv-razi"
}


variable "client_id" {
  type = string
  default = data.azurerm_key_vault_secret.client_id.value
}

variable "client_secret" {
  type = string
  default = data.azurerm_key_vault_secret.client_secret.value
}