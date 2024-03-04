terraform {
  azurerm = {
   source = "hashicorp/azurerm"
   version = "=3.94.0"
  }
 }
}

provider "azurerm" {
  features{}
}
