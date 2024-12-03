# Integration of Azure with Lacework for Configuration Assessment w/ Management Group

The following example shows a default integration of an Azure Tenant and the default subscription with Lacework for configuration assessment using a Management Group.

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
  subscription_id = "00000000-0000-0000-0000-000000000001"
  features {}
}

provider "lacework" {}

module "az_config" {
  source               = "lacework/config/azure"
  version              = "~> 3.0"

  use_management_group = true
  management_group_id  = "e4ef0585-9741-419d-a121-5886972c85d0"
}
```

For detailed information on integrating Lacework with Azure see [Azure Compliance & Activity Log Integrations - Terraform From Any Supported Host](https://docs.lacework.net/onboarding/azure-compliance-and-activity-log-integrations-terraform-from-any-supported-host)
