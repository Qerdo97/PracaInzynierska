resource "azurerm_storage_account" "storage_account-diagnostic" {
  name = "diag${random_id.randomId.hex}"
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name
  location = var.location
  account_replication_type = "LRS"
  account_tier = "Standard"
}

resource "azurerm_storage_account" "static_storage" {
  account_replication_type = "LRS"
  account_tier = "Standard"
  location = var.location
  name = "static${random_id.randomId.hex}"
  resource_group_name = azurerm_resource_group.Terraform_resource_group.name

  static_website {
    index_document = "sites/index.html"
  }
}