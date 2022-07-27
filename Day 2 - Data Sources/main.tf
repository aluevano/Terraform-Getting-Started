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

data "azurerm_resource_group" "example" {
  name = "example_chinmaykk"
}

output "id" {
  value = data.azurerm_resource_group.example.id
}