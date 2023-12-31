terraform {
  required_version = ">= 1.5.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}
