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

data "azurerm_resources" "example" {
  resource_group_name = "az_chinmay_kk"
}

output "azure_resources" {
  value = data.azurerm_resources.example.resources[0].id
}

