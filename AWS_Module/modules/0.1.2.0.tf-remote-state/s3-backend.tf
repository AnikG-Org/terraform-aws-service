#template backend-s3

terraform {
  backend "s3" {
    # bucket  = "local.bucket"
    # key     = "local.key"
    # encrypt = "local.encrypt"
    # region  = "local.region"
    # dynamodb_table = "local.dynamodb_table "           #"for store tf-state-lock file"
  }
}
#
#terraform init -reconfigure -backend-config=local.tfbackend
#########################

