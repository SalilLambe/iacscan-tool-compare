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

resource "aws_secretsmanager_secret" "test" {
  name = "test-cloudrail"
}
