resource "aws_vpc" "venkatesh" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "venkyy"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.venkatesh.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "venkysub"
  }
}