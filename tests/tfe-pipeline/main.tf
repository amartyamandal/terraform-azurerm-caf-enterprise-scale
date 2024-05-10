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
      name = "dev_test"
    }
  }

}

provider "azurerm" {
  features {}
}

#hell ya
