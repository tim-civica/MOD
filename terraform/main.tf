terraform {
  required_providers {
    aws = {
     source  = "hashicorp/aws"
     version = "~> 2.70.0"
    }
  }
  required_version = ">= 0.13"
}
resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"
}