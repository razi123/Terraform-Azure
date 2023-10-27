# data "azurerm_key_vault_secret" "client_id" {
#   name         = "client-id"  # Secret name in Azure Key Vault
#   key_vault_id = "/subscriptions/7ca5fc28-3bbc-47b0-960d-4dba56edc701/resourceGroups/benz_rg/providers/Microsoft.KeyVault/vaults/razi-keys"  # Azure Key Vault resource ID
# }

# data "azurerm_key_vault_secret" "client_secret" {
#   name         = "client-secret"
#   key_vault_id = "/subscriptions/7ca5fc28-3bbc-47b0-960d-4dba56edc701/resourceGroups/benz_rg/providers/Microsoft.KeyVault/vaults/razi-keys"
# }

# data "azurerm_key_vault_secret" "tenant_id" {
#   name         = "tenant-id"
#   key_vault_id = "/subscriptions/7ca5fc28-3bbc-47b0-960d-4dba56edc701/resourceGroups/benz_rg/providers/Microsoft.KeyVault/vaults/razi-keys"
# }

# data "azurerm_key_vault" "example" {
#   name                = "razi-keys"
#   resource_group_name = "benz_rg"
# }