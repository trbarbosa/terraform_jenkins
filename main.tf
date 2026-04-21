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

#resource "azurerm_subnet" "subnet-1" {
#  name                 = "SUBNET-1"
#  resource_group_name  = azurerm_resource_group.rg-teste.name
#  virtual_network_name = azurerm_virtual_network.vnet-teste.name
#  address_prefixes     = ["10.0.0.0/24"]
#}

#resource "azurerm_subnet" "subnet-2" {
#  name                 = "SUBNET-2"
#  resource_group_name  = azurerm_resource_group.rg-teste.name
#  virtual_network_name = azurerm_virtual_network.vnet-teste.name
#  address_prefixes     = ["10.0.3.0/24"]
#}
