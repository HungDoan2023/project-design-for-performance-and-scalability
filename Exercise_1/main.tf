terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.5.4"
}

# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "put your access key here"
  secret_key = "put your secret key here"
  token="put your token here"
  region  = "us-east-1"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
   count = "2"
   ami = "ami-0f34c5ae932e6f0e4"
   instance_type = "m4.large"
   tags = {
    Name = "Udacity M4"
  }
}

