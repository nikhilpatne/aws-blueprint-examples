provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example_rg" {
  name     = var.resource_group_name
  location = "eastus"
}
