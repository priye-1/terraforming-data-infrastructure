# Terraforming your Data Infrastructure

Welcome to the GitHub repository for the Terraform code used in my tutorial - <b>Terraforming Your Data Infrastructure on AWS: A Hands on guide for Data Engineers </b>. This tutorial provides hands-on guidance for provisioning AWS resources using Terraform.

## Hands on Tutorial

If you haven't already, please check out my detailed blog tutorial on Terraform and AWS EC2 and S3 setup. The blog provides context and explanations for the code you find here.

[Read the Tutorial](https://dev.to/priye/terraforming-your-data-infrastructure-on-aws-a-hands-on-guide-for-data-engineers-58e0)

## Repository Contents

This repository contains Terraform configuration files and scripts to create the AWS resources mentioned in the blog tutorial. Here's an overview of the contents:

- `main.tf`: The main Terraform configuration file defining the AWS EC2 instance and S3 bucket resources.
- `variables.tf`: Variables used in the Terraform configuration.
- `outputs.tf`: Output variables defined for retrieving information about the created resources.
- `server-script.sh`: user data scripts for EC2 instances.

## Prerequisites

Before you can use this Terraform code, make sure you have the following prerequisites:

- An AWS account with appropriate permissions.
- Terraform installed on your local machine. You can download it [here](https://www.terraform.io/downloads.html).

## Getting Started

To use this Terraform configuration:

1. Clone this repository to your local machine.
2. Run `terraform init` to initialize the Terraform environment.
3. Run `terraform plan` to confirm configurations
4. Run `terraform apply` to create the EC2 instance and S3 bucket.

Remember to follow the steps outlined in the [blog tutorial](https://dev.to/priye/terraforming-your-data-infrastructure-on-aws-a-hands-on-guide-for-data-engineers-58e0) for a comprehensive guide.

## Feedback and Contributions

If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

Happy Terraforming! 🚀

