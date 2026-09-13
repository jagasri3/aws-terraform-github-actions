terraform {
  backend "s3" {
    bucket       = "terraform-project03-state-851725554910"
    key          = "project03/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.10.0"
}

provider "aws" {
  region = var.aws_region
}
