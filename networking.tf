resource "azurerm_network_interface" "NIC-Prism" {
  name = "NIC-Prism"
  location = var.location
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name

  ip_configuration {
    name = "NIC-Prism-config"
    subnet_id = azurerm_subnet.virtual_network-main-subnet_production.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.publicIP-Prism.id
  }
  tags = var.tags
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "NIC-Prism-to-NSG-main" {
  network_interface_id = azurerm_network_interface.NIC-Prism.id
  network_security_group_id = azurerm_network_security_group.NSG-main.id
}

resource "azurerm_network_interface" "NIC-Gemstone" {
  name = "NIC-Gemstone"
  location = var.location
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name

  ip_configuration {
    name = "NIC-Prism-config"
    subnet_id = azurerm_subnet.virtual_network-main-subnet_production.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.publicIP-Gemstone.id
  }
  tags = var.tags
}

resource "azurerm_network_interface_security_group_association" "NIC-Gemstone-to-NSG-main" {
  network_interface_id = azurerm_network_interface.NIC-Gemstone.id
  network_security_group_id = azurerm_network_security_group.NSG-main.id
}
