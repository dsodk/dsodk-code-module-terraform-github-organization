# DevSecOps Dev Kit - Template terraform module

Template of terraform module

## Features

## Usage

## (Resource) Best Practices

## Examples

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | >= 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.template_null_resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |
| <a name="input_template_variable_boolean"></a> [template\_variable\_boolean](#input\_template\_variable\_boolean) | Template variable of type boolean | `bool` | `true` | no |
| <a name="input_template_variable_map"></a> [template\_variable\_map](#input\_template\_variable\_map) | Template variable of type map | `map(string)` | `{}` | no |
| <a name="input_template_variable_number"></a> [template\_variable\_number](#input\_template\_variable\_number) | Template variable of type number | `number` | `123` | no |
| <a name="input_template_variable_string"></a> [template\_variable\_string](#input\_template\_variable\_string) | Template variable of type boolean | `string` | `""` | no |
| <a name="input_triggers"></a> [triggers](#input\_triggers) | A map of arbitrary strings that, when changed, will force the null resource to be replaced, re-running any associated provisioners | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_template_null_resource_id"></a> [template\_null\_resource\_id](#output\_template\_null\_resource\_id) | The ID of the null resource |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

## License
