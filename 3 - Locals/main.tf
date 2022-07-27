terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.15.0"

    }
  }
}

locals {
 student_name = "chinmaykk"
}

provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "example" {
  name     = "example_${local.student_name}"
  location = "West Europe"
  tags = {
    "author"     = "Chinmay"
    "department" = "Information Technology"
  }
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestoraccck"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    "author" = "Chinmay"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "contentck"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
