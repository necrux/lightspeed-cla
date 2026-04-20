provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "rhel-10-cla-testing-1"

  tags = {
    Name        = "purpose"
    Environment = "cla-testing"
  }
}
