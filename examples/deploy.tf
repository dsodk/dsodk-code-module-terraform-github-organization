provider "github" {

  owner = var.owner
  token = var.token

  #token    = var.github_token    # GITHUB_TOKEN    - GitHub API Auth using OAuth or Personal Access Token
  #base_url = var.github_base_url # GITHUB_BASE_URL - Target GitHub base API endpoint. Required for GitHub Enterprise
  #owner    = var.github_owner    # GITHUB_OWNER    - Target GitHub organization or individual user account to manage

  #write_delay_ms = try(var.github_write_delay_ms, 1000) # Milliseconds to sleep between write ops for GitHub API Rate Limit
  #read_delay_ms  = try(var.github_read_delay_ms, 0)     # Milliseconds to sleep between read ops for GitHub API Rate Limit
}

##################################################
# GitHub Organization
##################################################

module "github_organization_settings" {
  source = "../"

  billing_email = var.billing_email
  company       = "dsodk"
  email         = "terraform.module.test@dsodk.io"
  location      = "Global"
  name          = "dsodk-test-github-org-module"
  description   = "Test organization used by example in dsodk-code-module-terraform-github-organization"

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
