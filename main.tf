provider "aws" {
region = "ap-south-1"
access_key = ""
secret_key = ""
}

resource "aws_instance" "one" {
ami = "ami-0cca134ec43cf708f"
instance_type ="t2.micro"
tags = {
name = "terraform"
}
}

resource "aws_s3_bucket" "two" {
  bucket = "yashsingip2203"
}

resource "aws_ebs_volume" "three" {
  availability_zone = "ap-south-1a"
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}

