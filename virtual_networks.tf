resource "azurerm_virtual_network" "virtual_network-main" {
  name = "VMnetwork"
  address_space = [
    "10.0.0.0/16"]
  location = var.location
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  tags = var.tags
}

resource "azurerm_subnet" "virtual_network-main-subnet_production" {
  name = "production"
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  virtual_network_name = azurerm_virtual_network.virtual_network-main.name
  address_prefixes = [
    "10.0.1.0/24"]
}
