provider "aws" {
  region = "us-east-1"
  #   access_key = ""
  #   secret_key = ""	
}

locals {
	instance_name = {"front-end":"ami-005f9685cb30f234b" , "back-end" :"ami-00805552fa999b1a0
" , "tester":"ami-0c2b0d3fb02824d92
"}
}

resource "aws_instance" "instance-create" {
  for_each = locals.instance_name
  ami                    = "ami-005f9685cb30f234b"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1"
  #key_name               = "dove-key"
  #vpc_security_group_ids = ["sg-0780815f55104be8a"]
  tags = {
    Name    = each.key
    Project = "Dove"
  }
}