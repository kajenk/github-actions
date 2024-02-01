terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

 backend "azurerm" {
    resource_group_name  = "terraformstate"
    storage_account_name = "tfstatesbackend365"
    container_name       = "tfbackend"
    key                  = "ghdev.terraform.tfstate"
  }
}