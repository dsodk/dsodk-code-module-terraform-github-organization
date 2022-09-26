provider "github" {
  owner = "dsodk-test"

  #token    = var.github_token    # GITHUB_TOKEN    - GitHub API Auth using OAuth or Personal Access Token
  #base_url = var.github_base_url # GITHUB_BASE_URL - Target GitHub base API endpoint. Required for GitHub Enterprise
  #owner    = var.github_owner    # GITHUB_OWNER    - Target GitHub organization or individual user account to manage

  #write_delay_ms = try(var.github_write_delay_ms, 1000) # Milliseconds to sleep between write ops for GitHub API Rate Limit
  #read_delay_ms  = try(var.github_read_delay_ms, 0)     # Milliseconds to sleep between read ops for GitHub API Rate Limit
}

##################################################
# Null Resource Module
##################################################

module "template_null_resource" {
  source = "../"

  triggers = {
    name    = "dsodk-template-code-terraform-module"
    trigger = "Change this text to trigger the module to replace null resources with new ones"
  }
}
