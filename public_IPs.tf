resource "azurerm_public_ip" "publicIP-main" {
  name = "main"
  location = var.location
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  allocation_method = "Dynamic"
}
