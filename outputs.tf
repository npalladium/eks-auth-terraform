output "aws_auth_configmap_data" {
  value       = kubernetes_config_map_v1_data.aws_auth.data
  description = "aws-auth ConfigMap after editing"
}