resource "azurerm_static_site" "site" {
  location = var.location
  resource_group_name = var.rg_name
  name = "cvdg-site"

  tags = var.tags
}

