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


# resource "aws_instance" "web" {
#   ami           = "ami-053db21b8e958f160"
#   instance_type = "t3.micro"
#   subnet_id = "subnet-0c65b566d4d56b4b7"


#   tags = {
    
#     Name = "HelloWorld"
#   }
# }