terraform {
  required_version = "~> 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.30.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "lab-udemy-05-rg-01"
    storage_account_name = "labudemy05st"
    container_name       = "lab-udemy-05-st-container-01"
    key                  = "azure-vnet/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}