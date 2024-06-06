terraform {
  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "eisworkshop"
    container_name       = "tfstate"
    subscription_id      = "652a7ae0-ba5c-44a3-aa80-69e61171f84c"
    key                  = "dev-hackathon-team-a.tfstate"
  }
}