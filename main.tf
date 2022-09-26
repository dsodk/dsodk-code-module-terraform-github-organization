resource "null_resource" "template_null_resource" {
  count = 3

  triggers = var.triggers
}
