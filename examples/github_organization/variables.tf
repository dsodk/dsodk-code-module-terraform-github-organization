##################################################
# GitHub Provider Config
##################################################

variable "github_token" {
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
