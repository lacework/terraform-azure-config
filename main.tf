locals {
  application_id       = var.use_existing_ad_application ? var.application_id : module.az_cfg_ad_application.application_id
  application_password = var.use_existing_ad_application ? var.application_password : module.az_cfg_ad_application.application_password
  subscription_ids = var.all_subscriptions ? (
    // the user wants to grant access to all subscriptions
    [for s in data.azurerm_subscriptions.available.subscriptions : s.subscription_id]
    ) : (
    // or, if the user wants to grant a list of subscriptions, if none then we default to the primary subscription
    length(var.subscription_ids) > 0 ? var.subscription_ids : [data.azurerm_subscription.primary.subscription_id]
  )
}

module "az_cfg_ad_application" {
  source                      = "lacework/ad-application/azure"
  #version                     = "~> 0.1"
  create                      = var.use_existing_ad_application ? false : true
  application_name            = var.application_name
  application_identifier_uris = var.application_identifier_uris
  subscription_ids            = var.subscription_ids
  all_subscriptions           = var.all_subscriptions
  key_vault_ids               = var.key_vault_ids
  tenant_id                   = var.tenant_id
  password_length             = var.password_length
  use_management_group        = var.use_management_group
  management_group_id         = var.management_group_id
}


data "azurerm_subscriptions" "available" {}
resource "azurerm_role_assignment" "grant_reader_role_to_subscriptions" {
  count = var.create ? length(local.subscription_ids) : 0
  scope = "/subscriptions/${local.subscription_ids[count.index]}"

  principal_id         = local.service_principal_id
  role_definition_name = "Reader"
}

data "azurerm_management_group" "default" {
  count = var.use_management_group ? 1 : 0
  name  = var.management_group_id
}

resource "azurerm_role_assignment" "default" {
  count                = var.use_management_group ? 1 : 0
  scope                = data.azurerm_management_group.default[0].id
  principal_id         = local.service_principal_id
  role_definition_name = "Reader"
}
resource "azurerm_role_assignment" "keyvaultrbac" {
  count                = var.use_management_group ? 1 : 0
  scope                = data.azurerm_management_group.default[0].id
  principal_id         = local.service_principal_id
  role_definition_name = "Key Vault Reader"
}
resource "azurerm_key_vault_access_policy" "default" {
  count        = var.create ? length(var.key_vault_ids) : 0
  key_vault_id = var.key_vault_ids[count.index]
  object_id    = local.service_principal_id
  tenant_id    = local.tenant_id

  key_permissions = [
    "List"
  ]
  secret_permissions = [
    "List"
  ]
}


# wait for X seconds for the Azure permissiosn to propragate
resource "time_sleep" "wait_time" {
  create_duration = var.wait_time
  depends_on      = [azurerm_role_assignment.default]
}

resource "lacework_integration_azure_cfg" "default" {
  name      = var.lacework_integration_name
  tenant_id = module.az_cfg_ad_application.tenant_id
  credentials {
    client_id     = local.application_id
    client_secret = local.application_password
  }
  depends_on = [time_sleep.wait_time]
}
