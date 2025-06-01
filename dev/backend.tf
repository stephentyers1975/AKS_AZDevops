terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.12.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.9.0"
}
# configures the provider

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
}
provider "azuread" {
  
}