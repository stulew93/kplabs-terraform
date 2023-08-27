terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "eu-west-2"
#  credentials now stored in user_profile/.aws/credentials and auto-retrieved by TF
#  access_key = var.access_key
#  secret_key = var.secret_key
}
