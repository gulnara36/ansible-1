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
  ami           = "ami-0f19d220602031aed"
  instance_type = "t2.micro"
  tags = {
    Name  = "team2terra-jenkins"
    Owner = "Gulnara"
  }
}
