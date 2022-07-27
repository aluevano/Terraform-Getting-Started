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


module "resource_group_creator" {
  source = "./ResourceGroup"
  resource_group_name = "chinmay_kk"
}

module "storage_account" {
  source = "./StorageAccount"
  resource_group_name = module.resource_group_creator.resource_group_value
  depends_on = [
    module.resource_group_creator
  ]
}