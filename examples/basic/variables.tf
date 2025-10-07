variable "aws_region" {
  description = "AWS region where the EKS cluster will be deployed."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name to assign to the EKS cluster."
  type        = string
  default     = "demo-eks"
}
