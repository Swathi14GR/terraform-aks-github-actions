terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstateprod123tfstateprodassigment"
    container_name       = "tfstate"
    key                  = "infra.tfstate"
  }
}
