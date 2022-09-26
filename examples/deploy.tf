provider "null" {
}

#provider "aws" {
#  region = "ca-central-1"
#}

##################################################
# Null Resource Module
##################################################

module "template_null_resource" {
  source = "../"

  triggers = {
    name    = "dsodk-template-code-terraform-module"
    trigger = "Change this text to trigger the module to replace null resources with new ones"
  }
}
