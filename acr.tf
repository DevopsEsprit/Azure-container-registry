provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  features {}
}



resource "azurerm_container_registry" "acr" {
  name                     = "aksk8s"
  resource_group_name      = "aks" 
  location                 = "West Europe" 
  sku                      = "Premium"
  admin_enabled            = false
  georeplication_locations = ["East US", "West Europe"]
}
