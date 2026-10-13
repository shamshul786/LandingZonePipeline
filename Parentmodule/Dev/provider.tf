terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 4.1.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "sit"
    storage_account_name = "sitterraformstate2026"
    container_name       = "tfstate"
    key                  = "shams.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "6670366d-32db-4180-a842-1ce1053317b7"
  features {}
}
