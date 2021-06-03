terraform {
  backend "azurerm" {
    resource_group_name   = "Terraform"
    storage_account_name  = "tfstate31973"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
  required_version = ">= 0.14.9"
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "Terraform_resource_group" {
  name = "Terraform"
  location = "northeurope"
}
