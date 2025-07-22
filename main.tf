# Associate the SSM Parameter Store path with the RAM share
# Dynamically associate each constructed SSM Parameter Store path with the RAM share

resource "aws_ram_resource_association" "ssm_parameter_path_associations" {
  # Use for_each to create one association for each flattened service/environment pair
  for_each           = toset(var.ssm_paths_to_share)
  resource_share_arn = var.ram_resource_share_arn
  # Construct the SSM parameter ARN using the service and environment from the current iteration's value
  resource_arn = each.key
}

# Associate the Organizational Unit (OU) as a principal to the RAM share
resource "aws_ram_principal_association" "ou_principal_association" {
  resource_share_arn = aws_ram_resource_share.ssm_parameter_share.arn
  # The principal ARN for an OU is: arn:aws:organizations::<master_account_id>:ou/<org_id>/<ou_id>
  # Assuming the target_ou_id variable directly provides the OU ID part (e.g., "ou-xxxx-xxxxxxxx")
  principal  = var.target_ou_arn
}