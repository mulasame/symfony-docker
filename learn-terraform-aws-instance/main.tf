terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "admin"
  region = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-079a2a9ac6ed876fc"
  instance_type = "t2.micro"

  tags = {
    Name = var.inst
  }
}
