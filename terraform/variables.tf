#-----------------------------
# Resource Group Variables
#-----------------------------
variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "rg-devops"
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

#-----------------------------
# Virtual Network and Subnet Variables
#-----------------------------
variable "vnet_name" {
  description = "Name of the virtual network for AKS"
  type        = string
  default     = "aks-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet for AKS"
  type        = string
  default     = "aks-subnet"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

#-----------------------------
# Azure Container Registry Variables
#-----------------------------
variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
  default     = "myacr12345"
}

variable "acr_sku" {
  description = "SKU of the Azure Container Registry"
  type        = string
  default     = "Basic"
}

variable "acr_admin_enabled" {
  description = "Enable admin user on the ACR"
  type        = bool
  default     = false
}

#-----------------------------
# AKS Cluster Variables
#-----------------------------
variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "aks-devops"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "aksdevops"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "VM size for the default node pool"
  type        = string
  default     = "Standard_B2s"
}

#-----------------------------
# API Server Access Variables
#-----------------------------
variable "authorized_ip_ranges" {
  description = "List of IP addresses allowed to access the AKS API"
  type        = list(string)
  default     = ["152.57.99.167/32"]  # Replace with your office/public IP
}

variable "enable_private_cluster" {
  description = "Enable private cluster (API only reachable inside VNet)"
  type        = bool
  default     = false
}
