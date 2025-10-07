terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "eks" {
  source = "../../modules/eks-cluster"

  cluster_name = var.cluster_name

  tags = {
    Environment = "demo"
    Project     = "eks-starter"
  }
}
