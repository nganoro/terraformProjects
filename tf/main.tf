resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "web_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "web-subnet"
  }
}