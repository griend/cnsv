variable "location" {
  type        = string
  description = "Location of the Azure resources"
  default     = "westeurope"
}

variable "rg_name" {
  type        = string
  description = "Name of the resource group"
  default     = "rg-web"
}

variable "name_prefix" {
  type    = string
  default = "griend"
}

variable "name_container" {
  type    = string
  default = "tfstate"
}

variable "tags" {
  type = map(any)
  default = {
    "environment" = "development",
    "createdby"   = "terraform"
  }
}
