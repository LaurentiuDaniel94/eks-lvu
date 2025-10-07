output "cluster_name" {
  value       = module.eks.cluster_name
  description = "Name of the created EKS cluster."
}

output "cluster_endpoint" {
  value       = module.eks.cluster_endpoint
  description = "Endpoint used to interact with the EKS control plane."
}

output "node_group_name" {
  value       = module.eks.node_group_name
  description = "Managed node group created for the cluster."
}
