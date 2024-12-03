provider "azurerm" {
  subscription_id = "00000000-0000-0000-0000-000000000001"
  features {}
}

provider "lacework" {}

module "az_config" {
  source = "../../"

  application_name          = "lacework_custom_ad_application_name"
  subscription_ids          = ["subscription-id-1", "subscription-id-2", "subscription-id-3"]
  lacework_integration_name = "a custom name"
  wait_time                 = "60s"
}
