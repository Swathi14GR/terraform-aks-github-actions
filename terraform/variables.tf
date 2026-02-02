variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "rg-devops"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "eastus"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "aks-vnet"
}

variable "vnet_address_space" {
  description = "Address space for VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "aks-subnet"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
  default     = "myacrassignment"
}

variable "acr_sku" {
  description = "SKU of ACR"
  type        = string
  default     = "Basic"
}

variable "acr_admin_enabled" {
  description = "Enable admin user in ACR"
  type        = bool
  default     = false
}

variable "aks_name" {
  description = "AKS Cluster name"
  type        = string
  default     = "aks-devops"
}

variable "node_count" {
  description = "Number of nodes in default pool"
  type        = number
  default     = 1
}

variable "kubernetes_version" {
  description = "Kubernetes version for AKS cluster"
  type        = string
  default     = "1.28.6"
}

variable "node_vm_size" {
  description = "VM size of nodes"
  type        = string
  default     = "Standard_D8_v3"
}

variable "dns_prefix" {
  description = "DNS prefix for AKS"
  type        = string
  default     = "aksdevops"
}

variable "authorized_ip_ranges" {
  description = "IP ranges allowed to access AKS API"
  type        = list(string)
  default     = ["152.57.99.167/32"]
}

variable "enable_private_cluster" {
  description = "Enable private cluster (API only reachable inside VNet)"
  type        = bool
  default     = true
}


