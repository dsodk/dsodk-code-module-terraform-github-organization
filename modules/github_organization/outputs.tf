##################################################
# GitHub Organization
##################################################

output "organization_settings_id" {
  description = "The ID of the organization settings"
  value       = try(github_organization_settings.this[0].id, "")
}

##################################################
# GitHub Organization Project
##################################################

output "organization_project_url" {
  description = "The URL of the project"
  value       = try(github_organization_project.this, "")
}

##################################################
# GitHub Organization Webhook
##################################################

output "organization_webhook_url" {
  description = "The URL of the webhook"
  value       = try(github_organization_webhook.this, "")
}
