variable "resource-group" {
 type = string
}

variable "location" {
  type = string
}

variable "subnetdetails" {
 type = map (string)
 default = {
 subnet1  = "10.0.1.0/24"
 subnet2  = "10.0.2.0/24"
 subnet3  = "10.0.3.0/24"
 }
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
