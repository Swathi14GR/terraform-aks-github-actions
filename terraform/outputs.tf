#-----------------------------
# Resource Group
#-----------------------------
output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "The location of the resource group"
  value       = azurerm_resource_group.rg.location
}

#-----------------------------
# Virtual Network & Subnet
#-----------------------------
output "vnet_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.aks_vnet.name
}

output "vnet_address_space" {
  description = "Address space of the virtual network"
  value       = azurerm_virtual_network.aks_vnet.address_space
}

output "subnet_name" {
  description = "Name of the subnet"
  value       = azurerm_subnet.aks_subnet.name
}

output "subnet_address_prefixes" {
  description = "Address prefixes of the subnet"
  value       = azurerm_subnet.aks_subnet.address_prefixes
}

#-----------------------------
# Azure Container Registry
#-----------------------------
output "acr_name" {
  description = "The name of the Azure Container Registry"
  value       = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  description = "Login server for the ACR"
  value       = azurerm_container_registry.acr.login_server
}

#-----------------------------
# AKS Cluster
#-----------------------------
output "aks_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_fqdn" {
  description = "The fully qualified DNS name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.fqdn
}

output "aks_api_server_url" {
  description = "The Kubernetes API server endpoint"
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].host
}

output "aks_node_resource_group" {
  description = "Resource group where AKS nodes are deployed"
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}
