output "aks_cluster_name" {
  description = "AKS Cluster Name"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_cluster_id" {
  description = "AKS Cluster Resource ID"
  value       = azurerm_kubernetes_cluster.aks.id
}

output "acr_login_server" {
  description = "ACR login server URL"
  value       = azurerm_container_registry.acr.login_server
}

output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.rg.name
}
