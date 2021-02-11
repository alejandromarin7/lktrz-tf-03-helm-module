variable set {
  type = list(object({
    namewp      = name
    namechartwp = name_chart
    namehelpwp  = name_helm
  }))
  default = [
    {
      namewp = wpdefault
      namechartwp = wordpress
      namehelpwp  = helmwphart
    }
  ]
}
#variable set {
#  type       = list(map(string))
#  default    = null
#}
variable name {}
variable name_chart {}
variable name_helm {}

