resource "helm_release" "wordpress" {
  name       = var.name_helm

  repository = "https://charts.bitnami.com/bitnami"
  chart      = var.name_chart

  dynamic set {
    for_each = var.settings
    content {
      name_helm  = set.namewp
      name_chart = set.namechartwp
    }
  }
  
}