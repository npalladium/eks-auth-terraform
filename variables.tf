variable "map_roles" {
  type = list(object({
    groups   = list(string)
    username = string
    rolearn  = string
  }))
  default     = []
  description = "Roles to be added to the EKS ConfigMap"
  nullable    = false
}

variable "map_users" {
  type = list(object({
    groups   = list(string)
    username = string
    userarn  = string
  }))
  default     = []
  description = "Users to be added to the EKS ConfigMap"
  nullable    = false
}
