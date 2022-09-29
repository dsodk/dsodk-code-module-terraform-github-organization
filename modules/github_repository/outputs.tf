##################################################
# GitHub Repository
##################################################

output "organization_repository_full_name" {
  description = "The full name of the repository like orgname/reponame"
  value       = try(github_repository.this[0].full_name, "")
}
