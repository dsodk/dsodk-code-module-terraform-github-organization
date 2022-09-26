# DSODK - Terraform Module for GitHub Organizations

Terraform module for creating and managing GitHub Organizations

## Features

## Usage

## (Resource) Best Practices

* https://registry.terraform.io/providers/integrations/github
* https://github.com/integrations/terraform-provider-github

## Examples

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 5.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 5.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_organization_project.this](https://registry.terraform.io/providers/integrations/github/5.3.0/docs/resources/organization_project) | resource |
| [github_organization_settings.this](https://registry.terraform.io/providers/integrations/github/5.3.0/docs/resources/organization_settings) | resource |
| [github_organization_webhook.this](https://registry.terraform.io/providers/integrations/github/5.3.0/docs/resources/organization_webhook) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_advanced_security_enabled_for_new_repositories"></a> [advanced\_security\_enabled\_for\_new\_repositories](#input\_advanced\_security\_enabled\_for\_new\_repositories) | Whether or not advanced security is enabled for new repositories. (Optional) | `bool` | `false` | no |
| <a name="input_billing_email"></a> [billing\_email](#input\_billing\_email) | The billing email address for the GitHub Organization. (Required) | `string` | n/a | yes |
| <a name="input_blog_url"></a> [blog\_url](#input\_blog\_url) | The blog URL (https://example.com) for the GitHub Organization. (Optional) | `string` | `""` | no |
| <a name="input_company"></a> [company](#input\_company) | The company name for the GitHub Organization. (Optional) | `string` | `""` | no |
| <a name="input_create_github_organization"></a> [create\_github\_organization](#input\_create\_github\_organization) | Whether to create the GitHub Organization. | `bool` | `true` | no |
| <a name="input_create_github_organization_project"></a> [create\_github\_organization\_project](#input\_create\_github\_organization\_project) | Whether to create Projects in the GitHub Organization. | `bool` | `false` | no |
| <a name="input_create_github_organization_webhook"></a> [create\_github\_organization\_webhook](#input\_create\_github\_organization\_webhook) | Whether to create Webhooks in the GitHub Organization. | `bool` | `false` | no |
| <a name="input_default_repository_permission"></a> [default\_repository\_permission](#input\_default\_repository\_permission) | The default permission [read\|write\|admin\|none] for GitHub Organization members to create new repositories . (Optional) | `string` | `"read"` | no |
| <a name="input_dependabot_alerts_enabled_for_new_repositories"></a> [dependabot\_alerts\_enabled\_for\_new\_repositories](#input\_dependabot\_alerts\_enabled\_for\_new\_repositories) | Whether or not dependabot alerts are enabled for new repositories. (Optional) | `bool` | `false` | no |
| <a name="input_dependabot_security_updates_enabled_for_new_repositories"></a> [dependabot\_security\_updates\_enabled\_for\_new\_repositories](#input\_dependabot\_security\_updates\_enabled\_for\_new\_repositories) | Whether or not dependabot security updates are enabled for new repositories. (Optional) | `bool` | `false` | no |
| <a name="input_dependency_graph_enabled_for_new_repositories"></a> [dependency\_graph\_enabled\_for\_new\_repositories](#input\_dependency\_graph\_enabled\_for\_new\_repositories) | Whether or not dependency graph is enabled for new repositories. (Optional) | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the GitHub Organization. (Optional) | `string` | `""` | no |
| <a name="input_email"></a> [email](#input\_email) | The email address (example@example.com) for the GitHub Organization. (Optional) | `string` | `""` | no |
| <a name="input_github_organization_projects"></a> [github\_organization\_projects](#input\_github\_organization\_projects) | Map of GitHub Organization Projects to create. (Optional) | `map(any)` | `{}` | no |
| <a name="input_github_organization_webhooks"></a> [github\_organization\_webhooks](#input\_github\_organization\_webhooks) | Map of GitHub Organization Webhooks to create. (Optional)<br>For list of valid events, visit https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads#issues | `map(any)` | `{}` | no |
| <a name="input_has_organization_projects"></a> [has\_organization\_projects](#input\_has\_organization\_projects) | Whether or not organization projects are enabled for the GitHub Organization. (Optional) | `bool` | `true` | no |
| <a name="input_has_repository_projects"></a> [has\_repository\_projects](#input\_has\_repository\_projects) | Whether or not repository projects are enabled for the GitHub Organization. (Optional) | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for the GitHub Organization. (Optional) | `string` | `""` | no |
| <a name="input_members_can_create_internal_repositories"></a> [members\_can\_create\_internal\_repositories](#input\_members\_can\_create\_internal\_repositories) | Whether or not organization members can create new internal repositories. For Enterprise Organizations only. (Optional) | `bool` | `false` | no |
| <a name="input_members_can_create_pages"></a> [members\_can\_create\_pages](#input\_members\_can\_create\_pages) | Whether or not organization members can create new pages. (Optional) | `bool` | `true` | no |
| <a name="input_members_can_create_private_pages"></a> [members\_can\_create\_private\_pages](#input\_members\_can\_create\_private\_pages) | Whether or not organization members can create new private pages. (Optional) | `bool` | `true` | no |
| <a name="input_members_can_create_private_repositories"></a> [members\_can\_create\_private\_repositories](#input\_members\_can\_create\_private\_repositories) | Whether or not organization members can create new private repositories. (Optional) | `bool` | `true` | no |
| <a name="input_members_can_create_public_pages"></a> [members\_can\_create\_public\_pages](#input\_members\_can\_create\_public\_pages) | Whether or not organization members can create new public pages. (Optional) | `bool` | `true` | no |
| <a name="input_members_can_create_public_repositories"></a> [members\_can\_create\_public\_repositories](#input\_members\_can\_create\_public\_repositories) | Whether or not organization members can create new public repositories. (Optional) | `bool` | `true` | no |
| <a name="input_members_can_create_repositories"></a> [members\_can\_create\_repositories](#input\_members\_can\_create\_repositories) | Whether or not organization members can create new repositories. (Optional) | `bool` | `true` | no |
| <a name="input_members_can_fork_private_repositories"></a> [members\_can\_fork\_private\_repositories](#input\_members\_can\_fork\_private\_repositories) | Whether or not organization members can fork private repositories. (Optional) | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name for the GitHub Organization. (Optional) | `string` | `""` | no |
| <a name="input_secret_scanning_enabled_for_new_repositories"></a> [secret\_scanning\_enabled\_for\_new\_repositories](#input\_secret\_scanning\_enabled\_for\_new\_repositories) | Whether or not secret scanning is enabled for new repositories. (Optional) | `bool` | `false` | no |
| <a name="input_secret_scanning_push_protection_enabled_for_new_repositories"></a> [secret\_scanning\_push\_protection\_enabled\_for\_new\_repositories](#input\_secret\_scanning\_push\_protection\_enabled\_for\_new\_repositories) | Whether or not secret scanning push protection is enabled for new repositories. (Optional) | `bool` | `false` | no |
| <a name="input_twitter_username"></a> [twitter\_username](#input\_twitter\_username) | The Twitter username for the GitHub Organization. (Optional) | `string` | `""` | no |
| <a name="input_web_commit_signoff_required"></a> [web\_commit\_signoff\_required](#input\_web\_commit\_signoff\_required) | Whether or not commit signatures are required for commits to the organization. (Optional) | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organization_project_url"></a> [organization\_project\_url](#output\_organization\_project\_url) | The URL of the project |
| <a name="output_organization_settings_id"></a> [organization\_settings\_id](#output\_organization\_settings\_id) | The ID of the organization settings |
| <a name="output_organization_webhook_url"></a> [organization\_webhook\_url](#output\_organization\_webhook\_url) | The URL of the webhook |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

## License
