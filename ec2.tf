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






resource "aws_security_group" "venkatesh" {
  name        = "venkysecurity"
  
  vpc_id      = aws_vpc.venkatesh.id

  tags = {
    Name = "venkysecurity"
  }
}

resource "aws_security_group" "venkysecurity" {
  name        = "mythvenky"
  vpc_id      = aws_vpc.venkatesh.id

  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "venkysecurity"
  }
}






  


