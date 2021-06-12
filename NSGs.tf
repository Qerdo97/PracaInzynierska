resource "azurerm_network_security_group" "NSG-main" {
  name = "NSG-main"
  location = var.location
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name

  security_rule {
    name = "RDP"
    priority = 1000
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "3389"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name = "SSH"
    priority = 1001
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "22"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }
}
