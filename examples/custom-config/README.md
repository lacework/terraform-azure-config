# Customized Integration of Azure with Lacework for Configuration Assessment
The following example shows how to integrate an Azure Tenant and select subscriptions with Lacework for configuration assessment.
```hcl
terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}

provider "azuread" {}

provider "azurerm" {
  features {}
}

provider "lacework" {}

module "az_config" {
  source                      = "lacework/config/azure"
  version                     = "~> 0.1.2"
  application_name            = "lacework_custom_ad_application_name"
  application_identifier_uris = ["https://account.lacework.net"]
  subscription_ids            = ["subscription-id-1", "subscription-id-2", "subscription-id-3"]
  tenant_id                   = "123abc12-abcd-1234-abcd-abcd12340123"
  lacework_integration_name   = "a custom name"
  password_length             = 16
  key_vault_ids = [
    "/subscriptions/1234abcd-1234-abcd-a1b3-abcd12345xyz/resourceGroups/lwresourcegroup/providers/Microsoft.KeyVault/vaults/keyvault1",
    "/subscriptions/1234abcd-1234-abcd-a1b3-abcd12345xyz/resourceGroups/lwresourcegroup/providers/Microsoft.KeyVault/vaults/keyvault2",
    "/subscriptions/1234abcd-1234-abcd-a1b3-abcd12345xyz/resourceGroups/lwresourcegroup/providers/Microsoft.KeyVault/vaults/keyvault3"
  ]
}
```

For detailed information on integrating Lacework with Azure see [Azure Compliance & Activity Log Integrations - Terraform From Any Supported Host](https://support.lacework.com/hc/en-us/articles/360058966313-Azure-Compliance-Activity-Log-Integrations-Terraform-From-Any-Supported-Host)