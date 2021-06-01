provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "new-workspace" {
  instance_type =  "t2.micro"
  ami = "ami-0565af6e282977273"
}