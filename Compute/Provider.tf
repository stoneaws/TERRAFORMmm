terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "myaccesskey"
  secret_key = "mysecretkey"
}
# Create a VPC
resource "aws_vpc" "test-terraform" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
