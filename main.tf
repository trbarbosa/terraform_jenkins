resource "azurerm_resource_group" "rg-jenkins" {
  name     = "RG-JENKINS"
  location = "brazilsouth"
}

resource "azurerm_virtual_network" "vnet-jenkins" {
  name                = "VNET-JENKINS"
  resource_group_name = azurerm_resource_group.rg-jenkins.name
  location            = azurerm_resource_group.rg-jenkins.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_virtual_network" "vnet-2-mudado" {
  name                = "VNET-2"
  resource_group_name = azurerm_resource_group.rg-jenkins.name
  location            = azurerm_resource_group.rg-jenkins.location
  address_space       = ["10.0.0.0/16"]
}

#moved {
#  from = azurerm_virtual_network.vnet-2
#  to   = azurerm_virtual_network.vnet-2-mudado
#}
