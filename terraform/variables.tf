# -----------------------------
# Resource Group
# -----------------------------
variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
  default     = "rg-devops"
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "eastus"
}

# -----------------------------
# Virtual Network
# -----------------------------
variable "vnet_name" {
  description = "Virtual Network name"
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
  description = "Subnet prefixes"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

# -----------------------------
# Azure Container Registry
# -----------------------------
variable "acr_name" {
  description = "ACR name"
  type        = string
  default     = "myacr_assignment"
}

variable "acr_sku" {
  description = "ACR SKU"
  type        = string
  default     = "Basic"
}

variable "acr_admin_enabled" {
  description = "Enable admin user for ACR"
  type        = bool
  default     = false
}

# -----------------------------
# AKS Cluster
# -----------------------------
variable "aks_name" {
  description = "AKS cluster name"
  type        = string
  default     = "aks-devops"
}

variable "dns_prefix" {
  description = "AKS DNS prefix"
  type        = string
  default     = "aksdevops"
}

variable "node_count" {
  description = "Default node pool count"
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "VM size for default node pool"
  type        = string
  default     = "Standard_B2s"
}

# -----------------------------
# API Server Access
# -----------------------------
variable "authorized_ip_ranges" {
  description = "List of IPs allowed to access AKS API"
  type        = list(string)
  default     = ["152.57.99.167/32"] # replace with your IP
}

variable "enable_private_cluster" {
  description = "Enable private cluster (API only reachable inside VNet)"
  type        = bool
  default     = true
}
