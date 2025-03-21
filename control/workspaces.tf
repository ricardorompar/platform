data "tfe_organization" "r2" {
  name = "r2-org"
}

#############################################
#                 BOUNDARY                  #
#############################################

# Workspace for managing the Boundary cluster
resource "tfe_workspace" "boundary" {
  name         = "r2-boundary-cluster"
  organization = data.tfe_organization.r2.name
  tag_names    = ["Platform", "Boundary", "HCP"]
  description  = "Workspace for managing the Boundary cluster."
}

# Variables for Boundary workspace
resource "tfe_variable" "boundary_cluster_id" {
  key          = "boundary_cluster_id"
  value        = var.boundary_cluster_id
  category     = "terraform"
  workspace_id = tfe_workspace.boundary.id
  description  = "The name of the Boundary cluster."
}

resource "tfe_variable" "boundary_username" {
  key          = "boundary_username"
  value        = var.boundary_username
  category     = "terraform"
  workspace_id = tfe_workspace.boundary.id
  description  = "Username for the admin user of the Boundary cluster."
}

resource "tfe_variable" "boundary_password" {
  key          = "boundary_password"
  value        = var.boundary_password
  category     = "terraform"
  workspace_id = tfe_workspace.boundary.id
  description  = "Password for the admin user of the Boundary cluster."
}

resource "tfe_variable" "boundary_tier" {
  key          = "boundary_tier"
  value        = var.boundary_tier
  category     = "terraform"
  workspace_id = tfe_workspace.boundary.id
  description  = "Tier of the Boundary cluster. One of 'standard' or 'plus'."
}

resource "tfe_variable" "hcp_project_id" {
  key          = "hcp_project_id"
  value        = var.project_id
  category     = "terraform"
  workspace_id = tfe_workspace.boundary.id
  description  = "The ID of the project in HCP."
}

#############################################
#                   VAULT                   #
#############################################

# Workspace for managing Vault
resource "tfe_workspace" "vault" {
  name         = "r2-vault-dedicated"
  organization = data.tfe_organization.r2.name
  tag_names    = ["Platform", "Vault", "HCP", "AWS"]
  description  = "Workspace for managing the HCP Vault Dedicated."
}

# Variables for Vault workspace
resource "tfe_variable" "vault_cluster_id" {
  key          = "vault_cluster_id"
  value        = var.vault_cluster_id
  category     = "terraform"
  workspace_id = tfe_workspace.vault.id
  description  = "The name of the HCP Vault dedicated deployment."
}

resource "tfe_variable" "vault_tier" {
  key          = "vault_tier"
  value        = var.vault_tier
  category     = "terraform"
  workspace_id = tfe_workspace.vault.id
  description  = "Tier of the Vault deployment. One of 'development', 'standard' or 'plus'."
}

resource "tfe_variable" "vault_region" {
  key          = "vault_region"
  value        = var.region
  category     = "terraform"
  workspace_id = tfe_workspace.vault.id
  description  = "Region for the HCP Vault cluster."
}

resource "tfe_variable" "vault_cloud" {
  key          = "vault_cloud"
  value        = var.cloud_provider
  category     = "terraform"
  workspace_id = tfe_workspace.vault.id
  description  = "Cloud provider for the HCP Vault cluster."
}


#############################################
#              AWS VPC and HVN              #
#############################################

# Workspace for managing the AWS VPC and HVN
resource "tfe_workspace" "vpc_hvn_peering" {
  name         = "vpc-hvn-peering"
  organization = data.tfe_organization.r2.name
  tag_names    = ["Platform", "VPC", "HVN", "AWS", "HCP"]
  description  = "Workspace for managing the HCP HVN and its peering connection with an AWS VPC."
}

resource "tfe_variable" "hcp_hvn_id" {
  key          = "hcp_hvn_id"
  value        = var.hcp_hvn_id
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "ID/name of the HashiCorp Virtual Network."
}

resource "tfe_variable" "hcp_peering_id" {
  key          = "hcp_peering_id"
  value        = "hcp-peering"
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "ID/name of the HCP peering connection."
}

resource "tfe_variable" "hcp_route_id" {
  key          = "hcp_route_id"
  value        = "hcp-route"
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "ID/name of the HCP route."
}

resource "tfe_variable" "hvn_region" {
  key          = "hvn_region"
  value        = var.region
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "Region for the HCP HVN."
}

resource "tfe_variable" "aws_vpc_cidr" {
  key          = "aws_vpc_cidr"
  value        = var.aws_vpc_cidr
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "CIDR block for the AWS VPC."
}

resource "tfe_variable" "hvn_cloud" {
  key          = "hvn_cloud"
  value        = var.cloud_provider
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "Cloud provider for the HCP HVN."
}