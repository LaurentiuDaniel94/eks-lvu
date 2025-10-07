# Small EKS Cluster Terraform Module

This repository contains a reusable Terraform module that provisions a minimal Amazon Elastic Kubernetes Service (EKS) cluster along with the networking and IAM dependencies required to get started quickly.

## Module structure

```
modules/
└── eks-cluster/
    ├── main.tf         # Infrastructure definition
    ├── outputs.tf      # Values exported by the module
    ├── variables.tf    # Inputs accepted by the module
    └── versions.tf     # Terraform and provider requirements
examples/
└── basic/
    └── main.tf         # Example instantiation of the module
```

## Usage

An example configuration is provided under `examples/basic`. Configure your AWS credentials and initialize Terraform:

```sh
cd examples/basic
terraform init
terraform apply
```

By default the example creates a small, highly-available cluster that uses the following settings:

- Two availability zones with public subnets and internet access
- EKS control plane running Kubernetes `1.29`
- Managed node group using on-demand `t3.small` instances (1–3 nodes, desired size 2)

Refer to the variables defined in `modules/eks-cluster/variables.tf` to customize the deployment.

## Cleanup

When finished, destroy the example stack to avoid incurring charges:

```sh
terraform destroy
```

Ensure that all dependent resources (such as load balancers or volumes) are deleted before running the destroy command.
