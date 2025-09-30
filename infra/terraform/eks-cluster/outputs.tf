# EKS Cluster Info
output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks.cluster_name
}

# output "cluster_endpoint" {
#   description = "API endpoint of the EKS cluster"
#   value       = module.eks.cluster_endpoint
# }

# Security Groups
# output "cluster_security_group_id" {
#   description = "Security group for the EKS control plane"
#   value       = module.eks.cluster_security_group_id
# }

output "node_security_group_id" {
  description = "Security group for the EKS worker nodes"
  value       = module.eks.node_security_group_id
}

# IAM Role
# output "node_group_role_arn" {
#   description = "IAM role ARN of the worker node group"
#   value       = module.eks.eks_managed_node_groups["default"].iam_role_arn
# }

# ALB Info
output "alb_dns_name" {
  description = "Public DNS name of the Application Load Balancer"
  value       = aws_lb.todo_alb.dns_name
}
