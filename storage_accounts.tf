resource "azurerm_storage_account" "storage_account-diagnostic" {
  name = "diag${random_id.randomId.hex}"
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  location = var.location
  account_replication_type = "LRS"
  account_tier = "Standard"
  tags = var.tags
}

resource "azurerm_storage_account" "static_storage" {
  account_replication_type = "LRS"
  account_tier = "Standard"
  location = var.location
  name = "static${random_id.randomId.hex}"
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name

  static_website {
    index_document = "index.html"
  }
  tags = var.tags
}
resource "azurerm_storage_blob" "static_web_html_file" {
  name = "index.html"
  content_type = "text/html"
  storage_account_name = azurerm_storage_account.static_storage.name
  storage_container_name = "$web"
  type = "Block"
  source = "./sites/index.html"
  depends_on = [azurerm_storage_account.static_storage]
}
