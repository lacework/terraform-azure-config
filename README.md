<a href="https://lacework.com"><img src="https://techally-content.s3-us-west-1.amazonaws.com/public-content/lacework_logo_full.png" width="600"></a>

# terraform-azure-config

[![GitHub release](https://img.shields.io/github/release/lacework/terraform-azure-config.svg)](https://github.com/lacework/terraform-azure-config/releases/)
[![Codefresh build status](https://g.codefresh.io/api/badges/pipeline/lacework/terraform-modules%2Ftest-compatibility?type=cf-1&key=eyJhbGciOiJIUzI1NiJ9.NWVmNTAxOGU4Y2FjOGQzYTkxYjg3ZDEx.RJ3DEzWmBXrJX7m38iExJ_ntGv4_Ip8VTa-an8gBwBo)](https://g.codefresh.io/pipelines/edit/new/builds?id=607e25e6728f5a6fba30431b&pipeline=test-compatibility&projects=terraform-modules&projectId=607db54b728f5a5f8930405d)

Terraform module for integrating Azure Subscriptions and Tenants with Lacework for cloud resource configuration assessment.

It adds a Service Principal as a subscription "Reader" and "Key Vault Reader", then talks to Lacework API to configure a Cloud Config Integration

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.28 |
| <a name="requirement_lacework"></a> [lacework](#requirement\_lacework) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 2.28 |
| <a name="provider_lacework"></a> [lacework](#provider\_lacework) | ~> 1.0 |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_az_ad_application"></a> [az\_ad\_application](#module\_az\_ad\_application) | lacework/ad-application/azure | ~> 1.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.grant_key_vault_reader_role_to_managementgroup](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.grant_key_vault_reader_role_to_subscriptions](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.grant_reader_role_to_managementgroup](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.grant_reader_role_to_subscriptions](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [lacework_integration_azure_cfg.lacework](https://registry.terraform.io/providers/lacework/lacework/latest/docs/resources/integration_azure_cfg) | resource |
| [time_sleep.wait_time](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [azurerm_management_group.managementgroup](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/management_group) | data source |
| [azurerm_subscription.primary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |
| [azurerm_subscriptions.available](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscriptions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_all_subscriptions"></a> [all\_subscriptions](#input\_all\_subscriptions) | If set to true, grant read access to ALL subscriptions within the selected Tenant (overrides 'subscription\_ids') | `bool` | `false` | no |
| <a name="input_application_id"></a> [application\_id](#input\_application\_id) | The Active Directory Application id to use (required when use\_existing\_ad\_application is set to true) | `string` | `""` | no |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The name of the Azure Active Directory Application (required when use\_existing\_ad\_application is set to true) | `string` | `"lacework_security_audit"` | no |
| <a name="input_application_password"></a> [application\_password](#input\_application\_password) | The Active Directory Application password to use (required when use\_existing\_ad\_application is set to true) | `string` | `""` | no |
| <a name="input_lacework_integration_name"></a> [lacework\_integration\_name](#input\_lacework\_integration\_name) | The Lacework integration name | `string` | `"TF config"` | no |
| <a name="input_management_group_id"></a> [management\_group\_id](#input\_management\_group\_id) | The Management Group ID to add Reader permissions (required when use\_management\_group is true) | `string` | `""` | no |
| <a name="input_service_principal_id"></a> [service\_principal\_id](#input\_service\_principal\_id) | The Enterprise App Object ID related to the application\_id (required when use\_existing\_ad\_application is true) | `string` | `""` | no |
| <a name="input_subscription_ids"></a> [subscription\_ids](#input\_subscription\_ids) | List of subscriptions to grant read access to, by default the module will only use the primary subscription | `list(string)` | `[]` | no |
| <a name="input_use_existing_ad_application"></a> [use\_existing\_ad\_application](#input\_use\_existing\_ad\_application) | Set this to `true` to use an existing Active Directory Application | `bool` | `false` | no |
| <a name="input_use_management_group"></a> [use\_management\_group](#input\_use\_management\_group) | If set to `true`, the AD Application will be a Reader on the Management Group level instead of Subscription level | `bool` | `false` | no |
| <a name="input_wait_time"></a> [wait\_time](#input\_wait\_time) | Amount of time to wait before the Lacework resources are provisioned | `string` | `"20s"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_id"></a> [application\_id](#output\_application\_id) | The Lacework AD Application id |
| <a name="output_application_password"></a> [application\_password](#output\_application\_password) | The Lacework AD Application password |
| <a name="output_service_principal_id"></a> [service\_principal\_id](#output\_service\_principal\_id) | The Lacework Service Principal id |
| <a name="output_subscription_ids"></a> [subscription\_ids](#output\_subscription\_ids) | The list of subscriptions that will be shown in Lacework Cloud Config integration |
