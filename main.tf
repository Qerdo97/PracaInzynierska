terraform {
  backend "azurerm" {
    resource_group_name = "TerraformState"
    storage_account_name = "tfstate15537"
    container_name = "tfstate"
    key = "terraform.tfstate"
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
  location = var.location
  tags = var.tags
}
resource "random_id" "randomId" {
  keepers = {
    # Generate a new ID only when a new resource group is defined
    resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  }
  byte_length = 8
}
