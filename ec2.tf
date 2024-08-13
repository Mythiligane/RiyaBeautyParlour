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

resource "aws_s3_bucket" "myth" {
  bucket = "mythven"

  tags = {
    Name        = "mythven bucket"
    Environment = "Dev"
  }
}

resource "aws_security_group" "venkateshh1" {
  name        = "venkysecurity"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.venkatesh.id

  tags = {
    Name = "venkysecurity"
  }
}


  


