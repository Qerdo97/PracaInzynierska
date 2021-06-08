resource "azurerm_public_ip" "publicIP-Prism" {
  name = "publicIP-Prism"
  location = var.location
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  allocation_method = "Dynamic"
}
resource "azurerm_public_ip" "publicIP-Gemstone" {
  name = "publicIP-Gemstone"
  location = var.location
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  allocation_method = "Dynamic"
}
