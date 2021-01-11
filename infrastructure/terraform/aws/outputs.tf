# Region
output "region" {
  description = "AWS region."
  value       = var.region
}

# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnets
}

# VPN
output "vpn_id" {
  value = module.client_vpn.vpn_id
}

# Elasticsearch
output "es_endpoint" {
  value = element(concat(aws_elasticsearch_domain.test_w7b6.*.endpoint, list("")), 0)
}

output "es_kibana" {
  value = element(concat(aws_elasticsearch_domain.test_w7b6.*.kibana_endpoint, list("")), 0)
}

# RDS
output "this_db_instance_address" {
  description = "The address of the RDS instance"
  value       = element(concat(module.rds.*.this_db_instance_address, list("")), 0)
}

output "this_db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = element(concat(module.rds.*.this_db_instance_arn, list("")), 0)
}

output "this_db_instance_availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = element(concat(module.rds.*.this_db_instance_availability_zone, list("")), 0)
}

output "this_db_instance_endpoint" {
  description = "The connection endpoint"
  value       = element(concat(module.rds.*.this_db_instance_endpoint, list("")), 0)
}

output "this_db_instance_hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = element(concat(module.rds.*.this_db_instance_hosted_zone_id, list("")), 0)
}

output "this_db_instance_id" {
  description = "The RDS instance ID"
  value       = element(concat(module.rds.*.this_db_instance_id, list("")), 0)
}

output "this_db_instance_resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = element(concat(module.rds.*.this_db_instance_resource_id, list("")), 0)
}

output "this_db_instance_status" {
  description = "The RDS instance status"
  value       = element(concat(module.rds.*.this_db_instance_status, list("")), 0)
}

output "this_db_instance_name" {
  description = "The database name"
  value       = element(concat(module.rds.*.this_db_instance_name, list("")), 0)
}

output "this_db_instance_username" {
  description = "The master username for the database"
  value       = element(concat(module.rds.*.this_db_instance_username, list("")), 0)
}

output "this_db_instance_password" {
  description = "The database password (this password may be old, because Terraform doesn't track it after initial creation)"
  value       = element(concat(module.rds.*.this_db_instance_password, list("")), 0)
  sensitive   = true
}

output "this_db_instance_port" {
  description = "The database port"
  value       = element(concat(module.rds.*.this_db_instance_port, list("")), 0)
}

output "this_db_subnet_group_id" {
  description = "The db subnet group name"
  value       = element(concat(module.rds.*.this_db_subnet_group_id, list("")), 0)
}

output "this_db_subnet_group_arn" {
  description = "The ARN of the db subnet group"
  value       = element(concat(module.rds.*.this_db_subnet_group_arn, list("")), 0)
}

output "this_db_parameter_group_id" {
  description = "The db parameter group id"
  value       = element(concat(module.rds.*.this_db_parameter_group_id, list("")), 0)
}

output "this_db_parameter_group_arn" {
  description = "The ARN of the db parameter group"
  value       = element(concat(module.rds.*.this_db_parameter_group_arn, list("")), 0)
}

# EKS
output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = element(concat(module.eks.*.cluster_endpoint, list("")), 0)
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = element(concat(module.eks.*.cluster_security_group_id, list("")), 0)
}

output "kubectl_config" {
  description = "kubectl config as generated by the module."
  value       = element(concat(module.eks.*.kubeconfig, list("")), 0)
}

output "config_map_aws_auth" {
  description = "A kubernetes configuration to authenticate to this EKS cluster."
  value       = element(concat(module.eks.*.config_map_aws_auth, list("")), 0)
}
