

resource "azurerm_resource_group" "RG" {
  name  = var.resource-group
  location = var.location
}

resource "azurerm_virtual_network" "VNET" {
virtual_network_name   = "VNET1010"
resource_group_name = azurerm_resource_group.RG.name
location = azurerm_resource_group.RG.location
address_space = "10.0.0.0/24"
}

