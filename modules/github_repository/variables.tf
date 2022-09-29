##################################################
# GitHub Repository
##################################################

variable "create_github_repository" {
  description = "Whether to create Repositories in the GitHub Organization."
  type        = bool
  default     = true
}

variable "name" {
  description = "Name for the GitHub Repository. (Required)"
  type        = string
  default     = ""
}

variable "visibility" {
  description = "Visibility for the GitHub Repository. [private|public] (Required)"
  type        = string
  default     = ""
}

variable "description" {
  description = "Description for the GitHub Repository. (Optional)"
  type        = string
  default     = ""
}

variable "has_issues" {
  description = "Whether to enable Issues on the GitHub Repository. (Optional)"
  type        = bool
  default     = true
}

variable "has_projects" {
  description = "Whether to enable Projects on the GitHub Repository. (Optional)"
  type        = bool
  default     = true
}

variable "has_wiki" {
  description = "Whether to enable Wiki on the GitHub Repository. (Optional)"
  type        = bool
  default     = true
}

variable "is_template" {
  description = "Whether this repository becomes a 'template' repository from which other repositories can be created/cloned. (Optional)"
  type        = bool
  default     = false
}

variable "delete_branch_on_merge" {
  description = "Whether branches will be deleted automatically upon merge of Pull Request. (Optional)"
  type        = bool
  default     = true
}

variable "gitignore_template" {
  description = "SOMETHING for the GitHub Repository. (Optional)"
  type        = string
  default     = ""
}

variable "license_template" {
  description = "The LICENSE template to use for the GitHub Repository. (Optional)"
  type        = string
  default     = ""
}

variable "archived" {
  description = "Whether the GitHub Repository should be 'Archived'. Set this to true in order to archive a repo. (Optional)"
  type        = bool
  default     = false
}

variable "archive_on_destroy" {
  description = "Whether the GitHub Repository should be 'Archived' when terraform destroy is run against it. (Optional)"
  type        = bool
  default     = true
}

variable "pages" {
  description = "A map containing the GitHub Pages configuration for the GitHub Repository. (Optional)"
  type        = map(any)
  default     = {}
}

variable "topics" {
  description = "A list of topics to tag the GitHub Repository with. (Optional)"
  type        = list(any)
  default     = []
}

variable "template" {
  description = "A map containing the names of the 'owner' and 'repository' of a template repository to use when creating this repository. (Optional)"
  type        = map(any)
  default     = {}
}
