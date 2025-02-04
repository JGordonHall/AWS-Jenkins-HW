terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.85.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-2"
}

resource "aws_s3_bucket" "jenkins_bucket" {
  bucket = "jenkins-bucket-88"

  tags = {
    Name        = "My bucket"
    Environment = "Jenkins"
  }
}