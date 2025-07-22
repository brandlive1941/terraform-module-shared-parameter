variable "ram_resource_share_arn" {
  description = "The ARN of the RAM resource share for SSM parameters."
  type        = string
}

variable "target_ou_arn" {
  description = "The ARN of the Organizational Unit (OU) to share the parameters with (e.g., arn:aws:organizations::123456789012:ou/o-abcdefg/ou-xxxx-xxxxxxxx)."
  type        = string
}

variable "ssm_paths_to_share" {
  description = "A map where keys are service names and values are objects containing a list of environments to share for that service."
  type = list(string)
}
