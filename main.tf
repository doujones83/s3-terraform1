 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIA3EZ5M2KHJRXIVDWQ"
  secret_key = "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"
}

resource "aws_s3_object" "bucket" {
    bucket = "s3-terraform2-123456"
    key = "hi.txt"
    source = "/Users/williamboswell/Desktop/Terraform/Terraform2/hi.txt"
    tags = {
        Name = "My bucket"
    }
}

resource "aws_s3_object" "file" {
    bucket = "aws_s3_object.bucket.bucket.id"
    key = "hi.txt"
    source = "/Users/williamboswell/Desktop/Terraform/Terraform2/hi.txt"
  } 

