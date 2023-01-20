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
  version = "~> 2.0"
}
```

For detailed information on integrating Lacework with Azure see [Azure Compliance & Activity Log Integrations - Terraform From Any Supported Host](https://support.lacework.com/hc/en-us/articles/360058966313-Azure-Compliance-Activity-Log-Integrations-Terraform-From-Any-Supported-Host)
