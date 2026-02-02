# General
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-devops"
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "eastus"
}

# Virtual Network
variable "vnet_name" {
  description = "VNet name"
  type        = string
  default     = "aks-vnet"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "aks-subnet"
}

variable "subnet_address_prefixes" {
  description = "Subnet address prefixes"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

# Container Registry
variable "acr_name" {
  description = "ACR name"
  type        = string
  default     = "acrdevops"
}

variable "acr_sku" {
  description = "ACR SKU"
  type        = string
  default     = "Basic"
}

variable "acr_admin_enabled" {
  description = "Enable admin account for ACR"
  type        = bool
  default     = true
}

# AKS Cluster
variable "cluster_name" {
  description = "AKS Cluster name"
  type        = string
  default     = "aks-devops"
}

variable "dns_prefix" {
  description = "AKS DNS prefix"
  type        = string
  default     = "aks-devops"
}

variable "node_count" {
  description = "Number of nodes in default pool"
  type        = number
  default     = 2
}

variable "node_vm_size" {
  description = "VM size for default pool"
  type        = string
  default     = "standard_d8_v3"
}

variable "authorized_ip_ranges" {
  description = "List of IPs allowed to access AKS API"
  type        = list(string)
  default     = ["152.57.99.167/32"]
}

# Log Analytics
variable "log_analytics_name" {
  description = "Log Analytics Workspace name"
  type        = string
  default     = "la-devops"
}
