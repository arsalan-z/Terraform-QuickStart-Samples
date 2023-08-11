output "subnet_ids" {
  value = azurerm_subnet.main[*].id
}

// Output the NIC ID
output "nic_id" {
  value = azurerm_network_interface.main.id
}
