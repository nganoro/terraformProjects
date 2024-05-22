provider "azurerm" { 
  version = "~> 5.0"
  region = "us-east-1"
}

resource "azurerm_resource_group" "rg" {
    name = "tuts-rg"
    location = "westus"

    tags = {
        foo = "bar"
    }
}

resource "azurerm_virtual_network" "main" {
    name = "tuts-network"
    address_space = ["10.0.0.0/16"]
    location = azurerm_resource_group.rg.location
}

resource "azurerm_subnet" "web" {
    name = "tuts-subnet"
    resource_group_name = azurerm_resource_group.rg.name
}