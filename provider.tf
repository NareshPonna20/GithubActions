terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
}

provider "azurerm" {
  features{}
client_id  = "a7a18a37-ec57-4f8c-8da0-5ac846198122"
tenant_id  = "4165c995-e4d8-4b22-83b0-755842b41b47"
client_secret = "npg8Q~dRDHYBl2O4bT.2KXSFfL4ki0jzn1dEfbua"
subscription_id = "550d6ea6-78a6-4709-a447-beabb2774b44"
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

