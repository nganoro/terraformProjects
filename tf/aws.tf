provider "aws" { 
#   source  = "hashicorp/aws"
  version = "~> 5.0"
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
}

resource "aws_subnet" "web_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/16"
}