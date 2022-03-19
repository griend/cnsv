resource "random_string" "resource_code" {
  length  = 8
  special = false
  upper   = false
}

resource "azurerm_storage_account" "cvdg_eu" {
  location                 = var.location
  resource_group_name      = var.rg_name
  name                     = "${var.name_prefix}${random_string.resource_code.result}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  allow_blob_public_access = true

  static_website {
    index_document = "index.html"
  }

  tags = var.tags
}

resource "azurerm_storage_blob" "index" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.cvdg_eu.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = "<h1>Static Website</h1>"
}

resource "azurerm_dns_zone" "cvdg_eu" {
  resource_group_name = var.rg_name
  name                = "cvdg.eu"
}
