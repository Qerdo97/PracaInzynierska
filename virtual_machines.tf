resource "azurerm_linux_virtual_machine" "VM-Prism" {
  name = "Prism"
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  location = var.location

  network_interface_ids = [
    azurerm_network_interface.NIC-Prism.id]
  size = "Standard_DS1_v2"

  os_disk {
    name = "OsDisk"
    caching = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "18.04-LTS"
    version = "latest"
  }

  computer_name = "prism"
  admin_username = var.admin_username
  admin_password = var.admin_password

  boot_diagnostics {
    storage_account_uri = azurerm_storage_account.storage_account-diagnostic.primary_blob_endpoint
  }
}

resource "azurerm_windows_virtual_machine" "VM-Gemstone" {
  admin_password = var.admin_password
  admin_username = var.admin_username
  location = var.location
  name = "Gemstone"
  network_interface_ids = [
    azurerm_network_interface.NIC-Prism.id]
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  size = "Standard_DS1_v2"
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }
  boot_diagnostics {
    storage_account_uri = azurerm_storage_account.storage_account-diagnostic.primary_blob_endpoint
  }
}