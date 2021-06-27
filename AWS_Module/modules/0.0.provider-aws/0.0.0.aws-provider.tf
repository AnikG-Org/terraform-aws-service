
provider "aws" {
  region = var.provider_region
  shared_credentials_file = var.AWS_SHARED_CREDENTIALS_FILE #"~/.aws/config"
  profile                 = var.AWS_PROFILE

  assume_role {
    role_arn     = var.role_arn # The role ARN within Account B to AssumeRole into. Created in step 1.
    session_name = var.session_name
    external_id  = var.external_id # (Optional) The external ID created in step 1c.
  }
  default_tags {
    tags = {
      Created_Via = "Terraform IAAC"
    }
  }
}

#Provider #---------------------------------------
variable "provider_region" {
  default     = "us-east-1"
  type        = string
  description = "Region of the Provider"
}

variable "AWS_PROFILE" {
  default     = "default"
  type        = string
  description = "Provider profile"
}
variable "AWS_SHARED_CREDENTIALS_FILE" {
  default     = "~/.aws/config"
  type        = string
  description = "path to cred"
}

variable "role_arn" { default = "" }
variable "external_id" { default = "" }
variable "session_name" { default = "" }