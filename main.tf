data "kubernetes_config_map_v1" "aws_auth" {
  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }
}

resource "kubernetes_config_map_v1_data" "aws_auth" {
  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }
  data = {
    mapRoles = yamlencode(toset(concat(yamldecode(lookup(data.kubernetes_config_map_v1.aws_auth.data, "mapRoles", "[]")), var.map_roles)))
    mapUsers = yamlencode(toset(concat(yamldecode(lookup(data.kubernetes_config_map_v1.aws_auth.data, "mapUsers", "[]")), var.map_users)))
  }
  force = true
}