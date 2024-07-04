terraform {
  required_version = "~> 1.1"
  required_providers {
    aws = {
      version = "~>3.1"
    }
  }
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region_name
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "region_name" {
  type    = string
  default = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami                    = "ami-06c68f701d8090592"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-01064b369aa9021eb"
  security_groups        = [aws_security_group.allow_ssh.name]
  tags = {
    Name = "terraform1"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

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
}
