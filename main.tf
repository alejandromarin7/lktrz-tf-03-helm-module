resource "helm_release" "wordpress" {
  name       = var.name_helm
  namespace  = "nonprod"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = var.name_chart

  dynamic "set" {
    for_each = var.set
    content {
      name  = set.value.name
      value = set.value.value
    }
  }
}