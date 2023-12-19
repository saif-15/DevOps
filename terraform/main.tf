terraform {
   required_providers {
       aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
      }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
   region = "us-east-1"
}

resource "aws_instance" "terraform-server"{
        ami = "ami-079db87dc4c10ac91"
        instance_type = "t2.micro"

        tags = {
          Name = "Terraform"
        }
}