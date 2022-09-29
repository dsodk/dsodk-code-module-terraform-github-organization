##################################################
# GitHub Organization
##################################################

resource "github_organization_settings" "this" {
  count = var.create_github_organization ? 1 : 0

  billing_email    = var.billing_email
  company          = var.company
  blog             = var.blog_url
  email            = var.email
  twitter_username = var.twitter_username
  location         = var.location
  name             = var.name
  description      = var.description

  has_organization_projects     = var.has_organization_projects
  has_repository_projects       = var.has_repository_projects
  default_repository_permission = var.default_repository_permission

  members_can_create_repositories          = var.members_can_create_repositories
  members_can_create_public_repositories   = var.members_can_create_public_repositories
  members_can_create_private_repositories  = var.members_can_create_private_repositories
  members_can_create_internal_repositories = var.members_can_create_internal_repositories
  members_can_create_pages                 = var.members_can_create_pages
  members_can_create_public_pages          = var.members_can_create_public_pages
  members_can_create_private_pages         = var.members_can_create_private_pages
  members_can_fork_private_repositories    = var.members_can_fork_private_repositories
  web_commit_signoff_required              = var.web_commit_signoff_required

  advanced_security_enabled_for_new_repositories               = var.advanced_security_enabled_for_new_repositories
  dependabot_alerts_enabled_for_new_repositories               = var.dependabot_alerts_enabled_for_new_repositories
  dependabot_security_updates_enabled_for_new_repositories     = var.dependabot_security_updates_enabled_for_new_repositories
  dependency_graph_enabled_for_new_repositories                = var.dependency_graph_enabled_for_new_repositories
  secret_scanning_enabled_for_new_repositories                 = var.secret_scanning_enabled_for_new_repositories
  secret_scanning_push_protection_enabled_for_new_repositories = var.secret_scanning_push_protection_enabled_for_new_repositories
}

##################################################
# GitHub Organization Project
##################################################

resource "github_organization_project" "this" {
  #count = var.create_github_organization && var.create_github_organization_project ? 1 : 0
  for_each = var.create_github_organization_project ? var.github_organization_projects : {}

  name = each.key
  body = try(each.value.body, null)
}

##################################################
# GitHub Organization Webhook
##################################################

resource "github_organization_webhook" "this" {
  #count = var.create_github_organization && var.create_github_organization_webhook ? 1 : 0
  for_each = var.create_github_organization_webhook ? var.github_organization_webhooks : {}

  events = each.value.events

  configuration {
    url          = each.value.configuration.url
    content_type = each.value.configuration.content_type
    insecure_ssl = try(each.value.configuration.insecure_ssl, false)
    secret       = try(each.value.configuration.secret, null)
  }

  active = try(each.value.active, true)
}
