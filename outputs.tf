output "ssm_parameter_share_arn" {
  description = "The ARN of the created SSM parameter share."
  value       = aws_ram_resource_association.ssm_parameter_path_associations[*].arn
}

