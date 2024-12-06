# Gmail's plus addressing feature allows users to create unique email addresses by adding a "+" symbol and any word or characters after their username and before the "@" symbol. For example, if a user's email address is john@gmail.com, they can create john+shopping@gmail.com, john+work@gmail.com, or john+anythingyouwant@gmail.com. All of these email addresses will go to the user's inbox, but Gmail will treat them as separate email addresses
module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "davyzhang325+sandbox@gmail.com" # The email will be sent to davyzhang325@gmail.com.
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "davyzhang325+sandbox@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
