variable "resource-group" {
 type = string
}

variable "location" {
  type = string
}



variable "nsgdetails" {
 type  = map (string)
 default = {
  eastus = {
   vnet_name = vnet20242025
   address_space = 10.0.0.0/16
   westus = {
   vnet_name = vnet20232024
   address_space = 10.0.0.0/16
   }
  }
 }
}
