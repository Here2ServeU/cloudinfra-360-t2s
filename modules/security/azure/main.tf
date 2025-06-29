resource "azurerm_network_security_group" "web" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group
  security_rule {
    name                       = var.nsg_rule_name
    priority                   = var.priority
    direction                  = var.direction
    access                     = var.access
    protocol                   = var.protocol
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
  }
}

resource "azurerm_key_vault" "t2s_kv" {
  name                        = var.keyvault_name
  location                    = var.location
  resource_group_name         = var.resource_group
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"
  soft_delete_enabled         = true
  purge_protection_enabled    = true
}

resource "azurerm_network_ddos_protection_plan" "ddos" {
  name                = var.ddos_name
  location            = var.location
  resource_group_name = var.resource_group
}
