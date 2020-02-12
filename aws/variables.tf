variable "region" {
  default = "us-west-2"
}

#variable "az" {
#  # FIXME: Pick a random default here?
#  default = "us-east-1b"
#}

variable "cluster_name" {
  default = "eks-cluster-salvis"
}

variable "vpc_name" {
  default = "vpc-salvis"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
  ]
}

variable "k8s_service_account_namespace" {
  default = "kube-system"
}

variable "k8s_service_account_name" {
  default = "cluster-autoscaler-serviceaccount"
}
