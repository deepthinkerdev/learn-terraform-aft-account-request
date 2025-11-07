module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "hwalan.lee+aftacc1@bespinglobal.com"
    AccountName               = "aftacc1"
    ManagedOrganizationalUnit = "AFT-Accounts"
    SSOUserEmail              = "hwalan.lee+aftacc1@bespinglobal.com"
    SSOUserFirstName          = "hwalan"
    SSOUserLastName           = "lee"
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
