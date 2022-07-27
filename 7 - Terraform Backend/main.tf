terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.15.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "exp_chinmaykk"
    storage_account_name = "examplestoraccck"
    container_name       = "contentck"
    key                  = "test.chinmay.azurermbackend"
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