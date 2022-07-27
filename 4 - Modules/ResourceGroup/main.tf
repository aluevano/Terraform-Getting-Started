resource "azurerm_resource_group" "example" {
  name     = "az_${var.resource_group_name}"
  location = "West Europe"
}