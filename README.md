  
## Overview

`terraform-module-shared-parameter` is a reusable Terraform module for managing shared parameters across your infrastructure. It enables consistent parameter definitions and simplifies the process of sharing values between modules and environments.

## Features

- Define and manage shared parameters centrally
- Supports variable types, descriptions, and default values
- Promotes DRY (Don't Repeat Yourself) principles in Terraform code

## Usage

```hcl
module "shared_parameter" {
  source  = "git::https://github.com/your-org/terraform-module-shared-parameter.git"
  name    = "example-parameter"
  value   = "example-value"
  # other supported variables
}
```

## Inputs

| Name  | Description                | Type   | Default | Required |
|-------|----------------------------|--------|---------|:--------:|
| name  | Name of the parameter      | string | n/a     |   yes    |
| value | Value of the parameter     | any    | n/a     |   yes    |

## Outputs

| Name   | Description                  |
|--------|------------------------------|
| output | The value of the parameter   |

## Requirements

- Terraform >= 0.13

## License

MIT License

