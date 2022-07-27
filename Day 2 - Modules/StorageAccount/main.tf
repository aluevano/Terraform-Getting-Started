data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestoraccountck1"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = data.azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "vhdsck"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}