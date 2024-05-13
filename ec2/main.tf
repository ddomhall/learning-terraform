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
  shared_credentials_files = ["/home/dom/.aws/credentials"]
  region  = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09627c82937ccdd6d"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

