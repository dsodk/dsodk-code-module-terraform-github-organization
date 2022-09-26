output "template_null_resource_id" {
  description = "The ID of the null resource"
  value       = try(null_resource.template_null_resource[0].id, "")
}
