terraform {
  # backend "s3" {
  #   bucket = "terraform-state-1234567890"
  #   key    = "terraform.tfstate"
  #   region = "us-east-1"
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}