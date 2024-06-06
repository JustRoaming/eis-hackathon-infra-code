provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = "uk south"
}

resource "azurerm_virtual_network" "example" {
  for_each = var.virtual_networks
  name                = each.key
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = each.value
}
