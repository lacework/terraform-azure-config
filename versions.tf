terraform {
  required_version = ">= 0.14"

  required_providers {
    azurerm = "~> 3.7"
    lacework = {
      source  = "lacework/lacework"
      version = "~> 0.3"
    }
  }
}
