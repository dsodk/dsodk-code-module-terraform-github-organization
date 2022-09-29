#!/usr/bin/env bash

terraform_variable_names="name
visibility
description
has_issues
has_projects
has_wiki
is_template
delete_branch_on_merge
gitignore_template
license_template
archived
archive_on_destroy
pages
topics
template"

for v in $(echo ${terraform_variable_names})
do
  echo "variable \"${v}\" {"
  echo "  description = \"SOMETHING for the GitHub Organization. (Optional)\""
  echo "  type        = string"
  echo "  default     = \"\""
  echo "}"
  echo ""
done

for v in $(echo ${terraform_variable_names})
do
  echo "${v} = var.${v}"
done
