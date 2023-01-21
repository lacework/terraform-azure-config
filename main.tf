locals {
  subscription_ids = var.all_subscriptions ? (
    // the user wants to grant access to all subscriptions
    [for s in data.azurerm_subscriptions.available.subscriptions : s.subscription_id if s.state == "Enabled" && !contains(var.subscription_exclusions, s.subscription_id)]
    ) : (
    // or, if the user wants to grant a list of subscriptions,
    // if none then we default to the primary subscription
    length(var.subscription_ids) > 0 ? var.subscription_ids : [data.azurerm_subscription.primary.subscription_id]
  )
  application_id       = var.use_existing_ad_application ? var.application_id : module.az_ad_application.application_id
  application_password = var.use_existing_ad_application ? var.application_password : module.az_ad_application.application_password
  service_principal_id = var.use_existing_ad_application ? var.service_principal_id : module.az_ad_application.service_principal_id
}


module "az_ad_application" {
  source           = "lacework/ad-application/azure"
  version          = "~> 1.0"
  create           = var.use_existing_ad_application ? false : true
  application_name = var.application_name
}

data "azurerm_subscription" "primary" {}
data "azurerm_subscriptions" "available" {}

resource "azurerm_role_assignment" "grant_reader_role_to_subscriptions" {
  count = length(local.subscription_ids)

  scope                = "/subscriptions/${local.subscription_ids[count.index]}"
  principal_id         = local.service_principal_id
  role_definition_name = "Reader"
}

resource "azurerm_role_assignment" "grant_key_vault_reader_role_to_subscriptions" {
  count = length(local.subscription_ids)

  scope                = "/subscriptions/${local.subscription_ids[count.index]}"
  principal_id         = local.service_principal_id
  role_definition_name = "Key Vault Reader"
}

data "azurerm_management_group" "managementgroup" {
  count = var.use_management_group ? 1 : 0
  name  = var.management_group_id
}

resource "azurerm_role_assignment" "grant_reader_role_to_managementgroup" {
  count = var.use_management_group ? 1 : 0

  scope                = data.azurerm_management_group.managementgroup[0].id
  principal_id         = local.service_principal_id
  role_definition_name = "Reader"
}

resource "azurerm_role_assignment" "grant_key_vault_reader_role_to_managementgroup" {
  count = var.use_management_group ? 1 : 0

  scope                = data.azurerm_management_group.managementgroup[0].id
  principal_id         = local.service_principal_id
  role_definition_name = "Key Vault Reader"
}

# wait for X seconds for the Azure permissions to propagate
resource "time_sleep" "wait_time" {
  create_duration = var.wait_time
  depends_on      = [azurerm_role_assignment.grant_reader_role_to_subscriptions]
  triggers = {
    # If App ID changes, trigger a wait between lacework_integration_azure_cfg destroys and re-creates, to avoid API errors
    app_id = local.application_id
    # If the Integration object changes (like during upgrade to v1.0), trigger a wait between lacework_integration_azure_cfg destroys and re-creates, to avoid API errors
    integration_name = var.lacework_integration_name
  }

}

# A single LW config integration can assess all subscriptions where
# the service principal has Reader permissions
resource "lacework_integration_azure_cfg" "lacework" {
  name      = var.lacework_integration_name
  tenant_id = data.azurerm_subscription.primary.tenant_id
  credentials {
    client_id     = local.application_id
    client_secret = local.application_password
  }
  depends_on = [time_sleep.wait_time]
}
