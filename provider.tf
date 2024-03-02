terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.0"
    }
  }
}

provider "aws" {
  region                   = "us-east-1"
  shared_config_files      = ["${pathexpand("~")}/.aws/config"]
  shared_credentials_files = ["${pathexpand("~")}/.aws/credentials"]
  profile                  = "terraform_aws"
}
 