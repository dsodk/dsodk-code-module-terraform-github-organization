provider "github" {

  token = var.github_token                 # GITHUB_TOKEN    - GitHub API Auth using OAuth or Personal Access Token
  owner = "opencepk-test-module-tf-github" # GITHUB_OWNER    - Target GitHub organization or individual user account to manage
  #base_url = var.github_base_url          # GITHUB_BASE_URL - Target GitHub base API endpoint. Required for GitHub Enterprise

  #write_delay_ms = try(var.github_write_delay_ms, 1000) # Milliseconds to sleep between write ops for GitHub API Rate Limit
  #read_delay_ms  = try(var.github_read_delay_ms, 0)     # Milliseconds to sleep between read ops for GitHub API Rate Limit
}

##################################################
# GitHub Organization
##################################################

module "github_organization" {
  source = "../../modules/github_organization"

  billing_email = var.billing_email
  company       = "opencepk.io"
  email         = "module.terraform.github.test@opencepk.io"
  name          = "opencepk-test-module-terraform-github"
  location      = "Global"
  description   = "Test github resources used in examples of this terraform module project: opencepk-module-tf-github"

  default_repository_permission = "read"

  members_can_create_repositories         = false
  members_can_create_public_repositories  = false
  members_can_create_private_repositories = false

  members_can_create_pages              = false
  members_can_create_public_pages       = false
  members_can_create_private_pages      = false
  members_can_fork_private_repositories = false

  secret_scanning_enabled_for_new_repositories                 = true
  secret_scanning_push_protection_enabled_for_new_repositories = true
}
