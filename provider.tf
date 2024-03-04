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
    storage_account_name = "terraformcicdsa"
    container_name       = "cicdcontainer"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the SAS Token can also be sourced
    # from an Environment Variable - more information is available below.
    sas_token = "sp=racwl&st=2024-03-04T14:00:04Z&se=2025-03-04T22:00:04Z&spr=https&sv=2022-11-02&sr=c&sig=KZEY0FLz5e2tor8CgiNk6g6VL3imkUvUIMWGbDSoYzw%3D"
  }
}

