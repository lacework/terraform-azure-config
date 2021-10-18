output "subscription_ids" {
  value       = local.subscription_ids
  description = "The list of subscriptions that will be shown in Lacework Cloud Config integration"
}

output "application_password" {
  value       = local.application_password
  description = "The Lacework AD Application password"
  sensitive   = true
}

output "application_id" {
  value       = local.application_id
  description = "The Lacework AD Application id"
}

output "service_principal_id" {
  value       = local.service_principal_id
  description = "The Lacework Service Principal id"
}