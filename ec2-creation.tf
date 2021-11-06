terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.34.0,<=3.35.0"
    }
  }
}

provider "aws" {
  region     = "us-east-2"
  #shared_credentials_file = "/var/lib/jenkins/.aws/credentials"
  profile = "default"
}

resource "aws_instance" "team2-terraform-jenkins" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  tags = {
    Name  = "team2terra-jenkins"
    Owner = "Gulnara"
  }
}
