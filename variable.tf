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
   
   westus = {
   vnet_name = vnet20232024

   }
  }
 }
}
