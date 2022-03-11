provider "azurerm" {
  features {}
}

locals {
  resource_prefix = "asdf"
  environment = "Tests"
}

resource "azurerm_security_center_subscription_pricing" "example" {
  tier          = "Free"
  resource_type = "KubernetesService"
}
