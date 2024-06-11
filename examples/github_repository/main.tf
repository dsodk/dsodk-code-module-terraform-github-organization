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

module "github_repository" {
  source = "../../modules/github_repository"

  name         = "opencepk-test-module-tf-github-repository-example"
  visibility   = "private"
  description  = "Repo created by example tests in opencepk-module-tf-github"
  has_issues   = true
  has_projects = true
  has_wiki     = true
  is_template  = false

  delete_branch_on_merge = true
  gitignore_template     = null
  license_template       = "gpl-3.0"
  archived               = false
  archive_on_destroy     = false
  topics                 = ["test", "destroyable"]
}
