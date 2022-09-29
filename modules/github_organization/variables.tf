##################################################
# GitHub Organization
##################################################

variable "create_github_organization" {
  description = "Whether to create the GitHub Organization."
  type        = bool
  default     = true
}

variable "billing_email" {
  description = "The billing email address for the GitHub Organization. (Required)"
  type        = string
}

variable "company" {
  description = "The company name for the GitHub Organization. (Optional)"
  type        = string
  default     = ""
}

variable "blog_url" {
  description = "The blog URL (https://example.com) for the GitHub Organization. (Optional)"
  type        = string
  default     = ""
}

variable "email" {
  description = "The email address (example@example.com) for the GitHub Organization. (Optional)"
  type        = string
  default     = ""
}

variable "twitter_username" {
  description = "The Twitter username for the GitHub Organization. (Optional)"
  type        = string
  default     = ""
}

variable "location" {
  description = "The location for the GitHub Organization. (Optional)"
  type        = string
  default     = ""
}

variable "name" {
  description = "The name for the GitHub Organization. (Optional)"
  type        = string
  default     = ""
}

variable "description" {
  description = "The description for the GitHub Organization. (Optional)"
  type        = string
  default     = ""
}

variable "has_organization_projects" {
  description = "Whether or not organization projects are enabled for the GitHub Organization. (Optional)"
  type        = bool
  default     = true
}

variable "has_repository_projects" {
  description = "Whether or not repository projects are enabled for the GitHub Organization. (Optional)"
  type        = bool
  default     = true
}

variable "default_repository_permission" {
  description = "The default permission [read|write|admin|none] for GitHub Organization members to create new repositories . (Optional)"
  type        = string
  default     = "read"
}

variable "members_can_create_repositories" {
  description = "Whether or not organization members can create new repositories. (Optional)"
  type        = bool
  default     = true
}

variable "members_can_create_public_repositories" {
  description = "Whether or not organization members can create new public repositories. (Optional)"
  type        = bool
  default     = true
}

variable "members_can_create_private_repositories" {
  description = "Whether or not organization members can create new private repositories. (Optional)"
  type        = bool
  default     = true
}

variable "members_can_create_internal_repositories" {
  description = "Whether or not organization members can create new internal repositories. For Enterprise Organizations only. (Optional)"
  type        = bool
  default     = false
}

variable "members_can_create_pages" {
  description = "Whether or not organization members can create new pages. (Optional)"
  type        = bool
  default     = true
}

variable "members_can_create_public_pages" {
  description = "Whether or not organization members can create new public pages. (Optional)"
  type        = bool
  default     = true
}

variable "members_can_create_private_pages" {
  description = "Whether or not organization members can create new private pages. (Optional)"
  type        = bool
  default     = true
}

variable "members_can_fork_private_repositories" {
  description = "Whether or not organization members can fork private repositories. (Optional)"
  type        = bool
  default     = false
}

variable "web_commit_signoff_required" {
  description = "Whether or not commit signatures are required for commits to the organization. (Optional)"
  type        = bool
  default     = false
}

variable "advanced_security_enabled_for_new_repositories" {
  description = "Whether or not advanced security is enabled for new repositories. (Optional)"
  type        = bool
  default     = false
}

variable "dependabot_alerts_enabled_for_new_repositories" {
  description = "Whether or not dependabot alerts are enabled for new repositories. (Optional)"
  type        = bool
  default     = false
}

variable "dependabot_security_updates_enabled_for_new_repositories" {
  description = "Whether or not dependabot security updates are enabled for new repositories. (Optional)"
  type        = bool
  default     = false
}

variable "dependency_graph_enabled_for_new_repositories" {
  description = "Whether or not dependency graph is enabled for new repositories. (Optional)"
  type        = bool
  default     = false
}

variable "secret_scanning_enabled_for_new_repositories" {
  description = "Whether or not secret scanning is enabled for new repositories. (Optional)"
  type        = bool
  default     = false
}

variable "secret_scanning_push_protection_enabled_for_new_repositories" {
  description = "Whether or not secret scanning push protection is enabled for new repositories. (Optional)"
  type        = bool
  default     = false
}

##################################################
# GitHub Organization Project
##################################################

variable "create_github_organization_project" {
  description = "Whether to create Projects in the GitHub Organization."
  type        = bool
  default     = false
}

variable "github_organization_projects" {
  description = "Map of GitHub Organization Projects to create. (Optional)"
  type        = map(any)
  default     = {}

  # type = object({
  #   name = object({
  #     body = optional(string)
  #   })
  # })

  # github_organization_projects = {
  #   my_org_project_name = {
  #     body = "My Project Body"
  #   },
  #   my_org_project_name_2 = {
  #     body = "My Project Body 2"
  #   },
  # }
}

##################################################
# GitHub Organization Webhook
##################################################

variable "create_github_organization_webhook" {
  description = "Whether to create Webhooks in the GitHub Organization."
  type        = bool
  default     = false
}

variable "github_organization_webhooks" {
  description = <<-EOT
    Map of GitHub Organization Webhooks to create. (Optional)
    For list of valid events, visit https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads#issues
EOT
  type        = map(any)
  default     = {}

  # type = object({
  #   events = (list[any])
  #   configuration = object({
  #     url = (string)
  #     content_type = (string, form) # The content type of the webhook. [form|json]
  #     insecure_ssl = optional(bool, false)
  #     secret       = optional(string)
  #   })
  #   active = optional(bool, true)
  # })
}
