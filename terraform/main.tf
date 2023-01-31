terraform {
  required_providers {
    aws = {
     source  = "hashicorp/aws"
     version = "~> 4.0"
    }
  }
  required_version = ">= 0.13"
}
provider "aws" {
  region = "eu-west-2"
}
resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "CIVICA-test"
  }
}