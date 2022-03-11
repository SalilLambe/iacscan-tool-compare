terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.37.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "public-bucket" {
  bucket = "bucket-with-public-acl-2"
  acl = "authenticated-read"
}
