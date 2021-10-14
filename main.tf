locals {
  subscription_ids = var.all_subscriptions ? (
    // the user wants to grant access to all subscriptions
    [for s in data.azurerm_subscriptions.available.subscriptions : s.subscription_id]
    ) : (
    // or, if the user wants to grant a list of subscriptions, if none then we default to the primary subscription
    length(var.subscription_ids) > 0 ? var.subscription_ids : [data.azurerm_subscription.primary.subscription_id]
  )
  application_id       = var.use_existing_ad_application ? var.application_id : module.az_ad_application.application_id
  application_password = var.use_existing_ad_application ? var.application_password : module.az_ad_application.application_password
  service_principal_id = var.use_existing_ad_application ? var.service_principal_id : module.az_ad_application.service_principal_id
  tenant_id = var.use_existing_ad_application ? data.azurerm_subscription.primary.tenant_id : module.az_ad_application.tenant_id
}


module "az_ad_application" {
  source  = "lacework/ad-application/azure"
  version = "~> 1.0"
  create  = var.use_existing_ad_application ? false : true
}

#this module must be called after using the "lacework/ad-application/azure" module 1.0 which has unbundled the AzureRM resources
# and supports MS Graph API to set Directory Reader AD role.

data "azurerm_subscription" "primary" {}
data "azurerm_subscriptions" "available" {}

resource "azurerm_role_assignment" "grant_reader_role_to_subscriptions" {
  count = length(local.subscription_ids)
  scope = "/subscriptions/${local.subscription_ids[count.index]}"

  principal_id         = var.service_principal_id
  role_definition_name = "Reader"
}

data "azurerm_management_group" "managementgroup" {
  count = var.use_management_group ? 1 : 0
  name  = var.management_group_id
}

resource "azurerm_role_assignment" "grant_reader_role_to_managementgroup" {
  count                = var.use_management_group ? 1 : 0
  scope                = data.azurerm_management_group.managementgroup[0].id
  principal_id         = var.service_principal_id
  role_definition_name = "Reader"
}

# wait for X seconds for the Azure permissions to propragate
resource "time_sleep" "wait_time" {
  create_duration = var.wait_time
  depends_on      = [azurerm_role_assignment.grant_reader_role_to_subscriptions]
}

#a single LW config integration is fine, as it will detect all subscriptions where the SP has Reader permissions
resource "lacework_integration_azure_cfg" "lacework" {
  name      = var.lacework_integration_name
  tenant_id = local.tenant_id
  credentials {
    client_id     = var.application_id
    client_secret = var.application_password
  }
  depends_on = [time_sleep.wait_time]
}
