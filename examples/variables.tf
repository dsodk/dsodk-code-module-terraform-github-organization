##################################################
# GitHub Provider Config
##################################################

variable "owner" {
  description = "Target GitHub organization or individual user account to manage. (Required)"
  type        = string
}

variable "token" {
  description = "GitHub API Auth using OAuth or Personal Access Token. (Required)"
  type        = string
  sensitive   = true
}

##################################################
# GitHub Organization
##################################################

variable "billing_email" {
  description = "The billing email address for the GitHub Organization. (Required)"
  type        = string
  sensitive   = true
}
