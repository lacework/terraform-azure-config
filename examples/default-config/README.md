# Default Integration of Azure with Lacework for Configuration Assessment

The following example shows a default integration of an Azure Tenant and the default subscription with Lacework for configuration assessment.

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
  source  = "lacework/config/azure"
  version = "~> 3.0"
}
```

For detailed information on integrating Lacework with Azure see [Azure Compliance & Activity Log Integrations - Terraform From Any Supported Host](https://docs.lacework.net/onboarding/azure-compliance-and-activity-log-integrations-terraform-from-any-supported-host)
