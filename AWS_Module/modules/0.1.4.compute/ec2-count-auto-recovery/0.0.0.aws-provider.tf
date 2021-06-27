#TF version
#provider.random: version = "~> 3.1"
terraform {
  required_version = ">= 0.12.19" #TERRAFORM_CLI_VERSION
  required_providers {
    aws = ">= 3.37" #AWS_providers version
  }
}
