output "link_to_static_website" {
  value = azurerm_storage_account.static_storage.primary_web_endpoint
}
output "admin_login" {
  value = var.admin_username
}
output "PrismVM_admin_password" {
  value = azurerm_linux_virtual_machine.VM-Prism.admin_password
  sensitive = true
}
output "GemstoneVM_admin_password" {
  value = azurerm_windows_virtual_machine.VM-Gemstone.admin_password
  sensitive = true
}
output "PrismVM_IP_public" {
  value = azurerm_linux_virtual_machine.VM-Prism.public_ip_address
}
output "GemstoneVM_IP_public" {
  value = azurerm_windows_virtual_machine.VM-Gemstone.public_ip_address
}
