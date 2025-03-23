# VPC in AWS with HVN peering connection

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.91.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.104.0"
    }
  }
}

provider "hcp" {
  client_id     = var.hcp_client_id
  client_secret = var.hcp_client_secret
}

provider "aws" {
  region = var.region
}