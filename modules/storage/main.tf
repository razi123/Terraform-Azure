# add Resource Group
resource "azurerm_resource_group" "resource_group"{
    name = var.resource_group_name_commons
    location = var.location
    }

resource "azurerm_virtual_network" "vnet_commons" {
  name                = var.vnet-emea-commons
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
}

resource "azurerm_subnet" "subnet_commons" {
  name                 = var.subnet-emea-commons
  resource_group_name  = var.resource_group_name_commons
  virtual_network_name = azurerm_virtual_network.vnet_commons.name
  address_prefixes     = ["10.0.2.0/24"]
  service_endpoints    = ["Microsoft.Sql", "Microsoft.Storage"]
}

resource "azurerm_storage_account" "storage_account_commons" {
  name                = var.storage_account_name_commons
  resource_group_name = azurerm_resource_group.resource_group.name

  location                = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  network_rules {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.1"]
    virtual_network_subnet_ids = [azurerm_subnet.subnet_commons.id]
  }
}