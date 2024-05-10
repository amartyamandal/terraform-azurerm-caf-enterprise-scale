terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.20.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "vindpro"

    workspaces {
      name = "PoC"
    }
  }
}

provider "azurerm" {
  features {}
}

# commented out for now