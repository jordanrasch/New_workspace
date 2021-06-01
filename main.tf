provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "new-workspace" {
  instance_type =  "t2.micro"
  ami = "ami-0565af6e282977273"

  tags = {
    Name = "first web server"
  }
}

resource "aws_instance" "server_cluster" {
  instance_type =  "t2.micro"
  ami = "ami-0565af6e282977273"
  count = 5
  tags = {
    Name = "cluster server ${aws_instance.server_cluster.count[index]}"
  }
}