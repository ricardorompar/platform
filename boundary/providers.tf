# Boundary

terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = "1.2.0"
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