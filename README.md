<a href="https://lacework.com"><img src="https://techally-content.s3-us-west-1.amazonaws.com/public-content/lacework_logo_full.png" width="600"></a>

# terraform-azure-config

[![GitHub release](https://img.shields.io/github/release/lacework/terraform-azure-config.svg)](https://github.com/lacework/terraform-azure-config/releases/)
[![Codefresh build status](https://g.codefresh.io/api/badges/pipeline/lacework/terraform-modules%2Ftest-compatibility?type=cf-1&key=eyJhbGciOiJIUzI1NiJ9.NWVmNTAxOGU4Y2FjOGQzYTkxYjg3ZDEx.RJ3DEzWmBXrJX7m38iExJ_ntGv4_Ip8VTa-an8gBwBo)](https://g.codefresh.io/pipelines/edit/new/builds?id=607e25e6728f5a6fba30431b&pipeline=test-compatibility&projects=terraform-modules&projectId=607db54b728f5a5f8930405d)

Terraform module for integrating Azure Subscriptions and Tenants with Lacework for cloud resource configuration assessment.

It adds a Service Principal as a subscription "Reader" and "Key Vault Reader", then talks to Lacework API to configure a Cloud Config Integration

## Inputs

| Name                        | Description                                                                                                      | Type           | Default                     | Required |
| --------------------------- | ---------------------------------------------------------------------------------------------------------------- | -------------- | --------------------------- | :------: |
| all_subscriptions           | If set to true, grant read access to ALL subscriptions within the selected Tenant (overrides 'subscription_ids') | `bool`         | `false`                     |    no    |
| application_id              | The Active Directory Application id to use (required when use_existing_ad_application is set to true)            | `string`       | `""`                        |    no    |
| application_name            | The name of the Azure AD Application (required when use_existing_ad_application is set to true)                  | `string`       | `"lacework_security_audit"` |    no    |
| application_password        | The Azure AD Application password to use (required when use_existing_ad_application is set to true)              | `string`       | `""`                        |    no    |
| lacework_integration_name   | The Lacework integration name                                                                                    | `string`       | `"TF config"`               |    no    |
| location                    | Azure region where the storage account for logging will reside                                                   | `string`       | `"West US 2"`               |    no    |
| service_principal_id        | The Enterprise App Object ID related to the application_id (required when use_existing_ad_application is true)   | `string`       | `""`                        |    no    |
| management_group_id         | The Management Group ID to add Reader permissions (required when use_management_group is true)                   | `string`       | `""`                        |    no    |
| subscription_ids            | List of subscriptions to grant read access to, by default the module will only use the primary subscription      | `list(string)` | `[]`                        |    no    |
| use_existing_ad_application | Set this to true to use an existing Active Directory Application                                                 | `bool`         | `false`                     |    no    |
| use_management_group        | If set to `true`, the AD Application will be a Reader on the Management Group level instead of Subscription level| `bool`         | `false`                     |    no    |
| wait_time                   | Amount of time to wait before the Lacework resources are provisioned                                             | `string`       | `"20s"`                     |    no    |

## Outputs

| Name                 | Description                                      |
| -------------------- | ------------------------------------------------ |
| application_id       | The Lacework AD Application id                   |
| application_password | The Lacework AD Application password             |
| service_principal_id | The Lacework Service Principal id                |
| subscription_ids     | The list of subscriptions that will send Activity Logs to the storage account |
