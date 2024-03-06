

resource "azurerm_resource_group" "RG" {
  name  = var.resource-group
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "myvnet101010"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  address_space       = ["10.0.0.0/16"]

 dynamic "subnet" {
 for_each   = var.subnetdetails
 content {
 name = subnet.key
 address_prefix  = subnet.value
 }
 }
}
