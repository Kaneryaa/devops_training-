
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "my_aws_instance" {
	count = 3-
	ami = "ami-0557a15b87f6559cf"
	instance_type = "t2.micro"
	tags = {
		name = "remote_lunch"
	}
}

resource "aws_s3_bucket" "my_s3_bucket" {
	bucket = "bucket_terraforms_danish"
	tags = {
		Name = "bucket_terraforms_danish"
	
	}
}

output "ec2_public_ip" {
	value = aws_instance.my_aws_instance.public_ip
}