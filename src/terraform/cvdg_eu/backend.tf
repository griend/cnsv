terraform {
  backend "azurerm" {
    resource_group_name  = "rg-web"
    storage_account_name = "griendeh24g4vw"
    container_name       = "tfstate"
    key                  = "cvdg_eu.tfstate"
  }
}
