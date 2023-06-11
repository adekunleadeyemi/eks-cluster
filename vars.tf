variable "eks-cluster-name" {
  description = "EKS cluster name"
  default = "my-first-eks-cluster"
}

variable "cluster_version" {
  description = "Cluster version"
  default = "1.21"
}

variable "subnets" {
  description = "subnets for clusters"
  default = "[]"
}

variable "vpc" {
  description = "vpc ids"
  default = ""
}

variable "name" {
  description = "name of cluster"
  default = "eks"
}

variable "environment" {
  description = "Environment"
  default = "dev"
}

variable "project" {
  description = "project"
  default = "dev-project"
}

variable "cidr" {
  description = "cidr ranges"
  default = "10.0.0.0/16"
}

variable "azs" {
  description = ""
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}