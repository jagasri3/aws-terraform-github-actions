# AWS Infrastructure Automation Using Terraform & GitHub Actions

## Project Overview

This project automates AWS infrastructure provisioning using Terraform and GitHub Actions.

The deployment workflow follows:

GitHub → GitHub Actions → Format → Init → Validate → Plan → Plan Artifact → Manual Approval → Apply → Outputs → Validation

## AWS Infrastructure

The following AWS resources are provisioned using Terraform:

- VPC
- Two Public Subnets
- Internet Gateway
- Route Table and Associations
- Security Group
- EC2 Instance
- Elastic IP
- S3 Bucket
- IAM Role and Instance Profile

## Terraform Structure

```text
terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── s3.tf
├── terraform.tfvars
├── .gitignore
└── modules/
    ├── networking/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── compute/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
