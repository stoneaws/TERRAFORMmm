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
  access_key = "AKIA5LV44JEULUVRI4QT"
  secret_key = "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"
}
# Create a VPC
resource "aws_vpc" "test-terraform" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
