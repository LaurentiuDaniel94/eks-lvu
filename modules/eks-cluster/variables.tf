variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC that will host the cluster."
  type        = string
  default     = "10.0.0.0/16"
}

variable "az_count" {
  description = "Number of availability zones to spread the cluster across."
  type        = number
  default     = 2

  validation {
    condition     = var.az_count >= 1
    error_message = "az_count must be at least 1."
  }
}

variable "kubernetes_version" {
  description = "Desired Kubernetes version for the control plane."
  type        = string
  default     = "1.29"
}

variable "desired_size" {
  description = "Desired number of worker nodes."
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes."
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes."
  type        = number
  default     = 3
}

variable "instance_types" {
  description = "List of EC2 instance types for the managed node group."
  type        = list(string)
  default     = ["t3.small"]
}

variable "tags" {
  description = "A map of tags to apply to all taggable resources."
  type        = map(string)
  default     = {}
}
