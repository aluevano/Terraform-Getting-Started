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
  name     = "example_test_2"
  location = "West Europe"
}