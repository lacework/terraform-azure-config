provider "azuread" {}

provider "azurerm" {
  features {}
}

module "ad_application" {
  source               = "../../"
  use_management_group = true
  management_group_id  = "e4ef0585-9741-419d-a121-5886972c85d0"
}
