resource "azurerm_resource_group" "example" {
  name     = "my-terraform-resource-group"
  location = "Central India"
  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
