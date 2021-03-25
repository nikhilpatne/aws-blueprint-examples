# Specify the provider and access details
provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Create a VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.10.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "Nikhil-999"
  }
}
