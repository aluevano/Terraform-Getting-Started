terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.15.0"
    }
  }

}

provider "azurerm" {
  features {
  }
}


resource "azurerm_resource_group" "example" {
  name     = "example_test_2-${count.index}"
  location = "West Europe"
  count = 2
}

output "created_resources" {
  value = [for i in azurerm_resource_group.example: i.name]
}