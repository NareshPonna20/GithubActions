

resource "azurerm_resource_group" "RG" {
  name  = var.resource-group
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  for_each            = var.nasgdetails
  name                = each.vnet_name
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  address_space       = each.address_prefix

}
