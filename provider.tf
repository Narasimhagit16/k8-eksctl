terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket         = "roboshop-dev-lock"
    key            = "eksctl"
    region         = "us-east-1"
    dynamodb_table = "roboshop-dynamo-dev-lock"
  }


}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

