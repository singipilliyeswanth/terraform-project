provider "aws" {
region = "ap-south-1"
access_key = "AKIAUJ4SHWD3M465U62D"
secret_key = "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"
}

resource "aws_instance" "one" {
ami = ""
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

