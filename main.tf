

module "network" {
  source              = "./modules/network"
  vnet_name           = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_address        = var.vnet_address
  subnet_cidrs        = var.subnet_cidrs
}

module "virtual_machine" {
  source              = "./modules/virtual-machine"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = module.network.subnet_ids[0]
  network_interface   = module.network.nic_id
  vm_name             = var.vm_name
}
