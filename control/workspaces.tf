data "tfe_organization" "r2" {
  name = var.org_name
}

data "tfe_oauth_client" "oauth-client" {
  organization = var.org_name
  name         = "R2 GitHub"
}

#############################################
#                 BOUNDARY                  #
#############################################

# Workspace for managing the Boundary cluster
resource "tfe_workspace" "boundary" {
  name         = "r2-boundary-cluster"
  organization = data.tfe_organization.r2.name
  tag_names    = ["platform", "boundary", "hcp"]
  description  = "Workspace for managing the Boundary cluster."
  vcs_repo {
    branch         = "main"
    identifier     = "ricardorompar/platform"
    oauth_token_id = data.tfe_oauth_client.oauth-client.oauth_token_id
  }
  working_directory = "/boundary"
}

#############################################
#                   VAULT                   #
#############################################

# Workspace for managing Vault
resource "tfe_workspace" "vault" {
  name         = "r2-vault-dedicated"
  organization = data.tfe_organization.r2.name
  tag_names    = ["platform", "vault", "hcp", "aws"]
  description  = "Workspace for managing the HCP Vault Dedicated."
}


#############################################
#              AWS VPC and HVN              #
#############################################

# Workspace for managing the AWS VPC and HVN
resource "tfe_workspace" "vpc_hvn_peering" {
  name         = "vpc-hvn-peering"
  organization = data.tfe_organization.r2.name
  tag_names    = ["platform", "vpc", "hvn", "aws", "hcp"]
  description  = "Workspace for managing the HCP HVN and its peering connection with an AWS VPC."
}