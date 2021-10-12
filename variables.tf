variable "application_name" {
  type        = string
  default     = "lacework_security_audit"
  description = "[DEPRECATED] The name of the Azure Active Directory Applicaiton"
}

# TODO @afiune do we need this?
variable "application_identifier_uris" {
  type        = list(string)
  description = "[DEPRECATED] A list of user-defined URI(s) for the Lacework AD Application"
  default     = []
}

variable "subscription_ids" {
  type        = list(string)
  description = "List of subscriptions to grant read access to, by default the module will only use the primary subscription"
  default     = []
}

variable "all_subscriptions" {
  type        = bool
  default     = false
  description = "If set to true, grant read access to ALL subscriptions within the selected Tenant (overrides 'subscription_ids')"
}

# If some of the subscriptions use Key Vault services, we need to the
# Azure App to have access to each Key Vault used in your subscriptions.
variable "key_vault_ids" {
  type        = list(string)
  description = "A list of Key Vault Ids used in your subscription for the Lacework AD App to have access to"
  default     = []
}

variable "tenant_id" {
  type        = string
  default     = ""
  description = "A Tenant ID different from the default defined inside the provider"
}

variable "password_length" {
  type        = number
  default     = 30
  description = "[DEPRECATED] The length of the Lacework AD Application password (required when use_existing_ad_application is set to false)"
}

variable "lacework_integration_name" {
  type        = string
  default     = "TF config"
  description = "The Lacework integration name"
}

variable "wait_time" {
  type        = string
  default     = "20s"
  description = "Amount of time to wait before the Lacework resources are provisioned"
}

variable "use_existing_ad_application" {
  type        = bool
  default     = false
  description = "Set this to true to use an existing Active Directory Application"
}
variable "service_principal_id" {
  type        = string
  default     = ""
  description = "The Service Principal id to use. (required when use_existing_ad_application is set to true)"
}

variable "application_id" {
  type        = string
  default     = ""
  description = "The Active Directory Application id to use (required when use_existing_ad_application is set to true)"
}

variable "application_password" {
  type        = string
  default     = ""
  description = "The Active Directory Application password to use (required when use_existing_ad_application is set to true)"
}

variable "use_management_group" {
  type        = bool
  default     = false
  description = "If set to `true`, the AD Application will be set up to leverage a Management Group"
}

variable "management_group_id" {
  type        = string
  default     = ""
  description = "The ID of the Management Group"
}
