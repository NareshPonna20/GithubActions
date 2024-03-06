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
