terraform {
  required_version = ">= 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-aman-tf-bucket-new"  # Update with new bucket name in ap-southeast-2
    region         = "ap-southeast-2"  # Ensure this matches the new region
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = "ap-southeast-2"  # Ensure that the provider is using the correct region as well
}
