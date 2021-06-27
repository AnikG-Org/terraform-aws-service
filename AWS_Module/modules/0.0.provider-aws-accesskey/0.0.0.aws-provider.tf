provider "aws" {
  region                      = var.provider_region
  profile                     = var.AWS_PROFILE
  shared_credentials_file     = var.shared_credentials_file
  access_key                  = var.access_key
  secret_key                  = var.secret_key
  token                       = var.token
  allowed_account_ids         = var.allowed_account_ids
  forbidden_account_ids       = var.forbidden_account_ids
  max_retries                 = var.max_retries
  s3_force_path_style         = var.s3_force_path_style
  skip_credentials_validation = var.skip_credentials_validation
  skip_get_ec2_platforms      = var.skip_get_ec2_platforms
  skip_metadata_api_check     = var.skip_metadata_api_check
  skip_region_validation      = var.skip_region_validation
  skip_requesting_account_id  = var.skip_requesting_account_id

  assume_role {
    role_arn     = var.role_arn # The role ARN within Account B to AssumeRole into. Created in step 1.
    session_name = var.session_name
    external_id  = var.external_id # (Optional) The external ID created in step 1c.
  }
  ignore_tags {
    key_prefixes = var.key_prefixes
    keys         = var.keys
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
variable "access_key" {
  default = ""
  type    = string
}
variable "secret_key" {
  type    = string
  default = ""
}
variable "token" { default = "" }
variable "role_arn" { default = "" }
variable "external_id" { default = "" }
variable "session_name" { default = "" }
variable "allowed_account_ids" {
  type    = list
  default = null
}
variable "forbidden_account_ids" {
  type    = list
  default = null
}
variable "max_retries" { default = null }
variable "s3_force_path_style" { default = null }
variable "shared_credentials_file" { default = null }
variable "skip_credentials_validation" { default = null }
variable "skip_get_ec2_platforms" { default = null }
variable "skip_metadata_api_check" { default = null }
variable "skip_region_validation" { default = null }
variable "skip_requesting_account_id" { default = null }
variable "key_prefixes" { default = null }
variable "keys" { default = null }
