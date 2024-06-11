##################################################
# GitHub Repository
##################################################

resource "github_repository" "this" {
  count = var.create_github_repository ? 1 : 0

  name                   = var.name
  visibility             = var.visibility
  description            = var.description
  has_issues             = var.has_issues
  has_projects           = var.has_projects
  has_wiki               = var.has_wiki
  is_template            = var.is_template
  delete_branch_on_merge = var.delete_branch_on_merge
  gitignore_template     = var.gitignore_template
  license_template       = var.license_template
  archived               = var.archived
  archive_on_destroy     = var.archive_on_destroy
  #pages                  = try(var.pages, {})
  topics = var.topics
  #template               = try(var.template, {})
}
