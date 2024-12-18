terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
    
  }
}

provider "aws" {
    region = "us-east-1"
  
}

resource "aws_vpc" "vpc_new" {
      cidr_block = "10.0.0.0/16"
      enable_dns_hostnames = true
      enable_dns_support = true
      tags = {
        Name = "MyVpc"
      }
  
}