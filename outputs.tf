output "ssm_parameter_share_arn" {
  description = "The ARN of the created SSM parameter share."
  value       = keys(var.ssm_paths_to_share)
}

