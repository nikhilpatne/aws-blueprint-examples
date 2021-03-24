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
}

resource "aws_internet_gateway" "example_gateway" {
  vpc_id = aws_vpc.example_vpc.id
}

# Create a subnet to launch our instances into
resource "aws_subnet" "example_subnet" {
  vpc_id                  = aws_vpc.example_vpc.id
  cidr_block              = "10.10.4.0/24"
  map_public_ip_on_launch = false
  availability_zone = var.aws_zone
}

output "aws_region" {
  value = var.aws_region
}