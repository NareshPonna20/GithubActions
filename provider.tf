terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

terraform {
 backend "azurerm" {
  storage_name  = "terraformcicdsa"
  resource_group_name = "terraformRG"
  container_name = "cicdcontainer"
  key            = "workflowstate"
  SAS_Token      =  "sp=ral&st=2024-03-04T13:53:53Z&se=2024-03-04T21:53:53Z&spr=https&sv=2022-11-02&sr=c&sig=%2FbCZlAM2Wl1Z4UlXvr1WmhXebrpqW1VhqsYGUee8Vm4%3D"
 }
}
