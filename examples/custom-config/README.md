# Customized Integration of Azure with Lacework for Configuration Assessment

The following example shows how to integrate an Azure Tenant and select subscriptions with Lacework for configuration assessment.

## Sample Code

```hcl
terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "lacework" {}

module "az_config" {
  source                    = "lacework/config/azure"
  version                   = "~> 2.0"

  application_name          = "lacework_custom_ad_application_name"
  subscription_ids          = ["subscription-id-1", "subscription-id-2", "subscription-id-3"]
  lacework_integration_name = "a custom name"
}
```

For detailed information on integrating Lacework with Azure see [Azure Compliance & Activity Log Integrations - Terraform From Any Supported Host](https://docs.lacework.net/onboarding/azure-compliance-and-activity-log-integrations-terraform-from-any-supported-host)
