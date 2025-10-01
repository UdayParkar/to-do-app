variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "Name for the EKS cluster"
  type        = string
  default     = "todo-eks"
}

variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default     = "t3.medium"   # keep cost low; m7i-flex.large is $$$
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of nodes"
  type        = number
  default     = 3
}

variable "eks_admin_arn" {
  description = "IAM ARN for the admin user of the EKS cluster"
  type        = string
}

# ---- Provider Credentials (injected via secrets.tfvars) ----
variable "aws_access_key" {
  description = "AWS access key for Terraform"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret key for Terraform"
  type        = string
  sensitive   = true
}
