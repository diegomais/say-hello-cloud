terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }

  backend "s3" {
    bucket = "say-hello-cloud-iac"
    key    = "state/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "terraform-state" {
  bucket        = "say-hello-cloud-iac"
  force_destroy = true

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "terraform-state" {
  bucket = "say-hello-cloud-iac"
  versioning_configuration {
    status = "Enabled"
  }
}
