#-----------------------------
# Resource Group
#-----------------------------
resource "azurerm_resource_group" "rg" {
  name     = "rg-devops"
  location = "East US"
}

#-----------------------------
# Virtual Network
#-----------------------------
resource "azurerm_virtual_network" "aks_vnet" {
  name                = "aks-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "aks-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = ["10.0.1.0/24"]

  delegation {
    name = "aks_delegation"
    service_delegation {
      name    = "Microsoft.ContainerService/managedClusters"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}

#-----------------------------
# Azure Container Registry
#-----------------------------
resource "azurerm_container_registry" "acr" {
  name                = "myacr12345"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = false
}

#-----------------------------
# AKS Cluster
#-----------------------------
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-devops"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aksdevops"

  default_node_pool {
    name           = "default"
    node_count     = 1
    vm_size        = "Standard_B2s"
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }

  identity {
    type = "SystemAssigned"
  }

  # Enable RBAC (fixes HIGH severity)
  role_based_access_control {
    enabled = true
  }

  # Restrict API access to specific IPs
  api_server_access_profile {
    authorized_ip_ranges   = ["203.0.113.10/32"] # Replace with your allowed IPs
    enable_private_cluster = false
  }

  # Enable network policy
  network_profile {
    network_plugin    = "azure"
    network_policy    = "azure"
    load_balancer_sku = "standard"
  }

  tags = {
    environment = "devops"
  }
}


