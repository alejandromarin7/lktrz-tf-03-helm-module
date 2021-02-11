variable name_helm {}

variable name_chart {}

variable "set" {
  default = [
    {
      name   = "helmwphart"
      chart = "wordpress"
    }
  ]
}
