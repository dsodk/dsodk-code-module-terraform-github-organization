variable "triggers" {
  description = "A map of arbitrary strings that, when changed, will force the null resource to be replaced, re-running any associated provisioners"
  type        = map(string)
  default     = {}
}

variable "template_variable_boolean" {
  description = "Template variable of type boolean"
  type        = bool
  default     = true
}

variable "template_variable_string" {
  description = "Template variable of type boolean"
  type        = string
  default     = ""
}

variable "template_variable_number" {
  description = "Template variable of type number"
  type        = number
  default     = 123
}

variable "template_variable_map" {
  description = "Template variable of type map"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}
