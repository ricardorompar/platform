# Workspace control

terraform {
  cloud {
    organization = "r2-org"
    workspaces {
      name    = "r2-platform-control"
      project = "Default Project"
    }
  }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.64.0"
    }
  }
}
