output "ssm_parameter_share_arn" {
  description = "The ARN of the created SSM parameter share."
  value       = aws_ram_resource_share.ssm_parameter_share.arn
}

