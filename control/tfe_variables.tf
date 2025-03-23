
#############################################
#                 BOUNDARY                  #
#############################################

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
  sensitive    = true
}

resource "tfe_variable" "boundary_tier" {
  key          = "boundary_tier"
  value        = var.boundary_tier
  category     = "terraform"
  workspace_id = tfe_workspace.boundary.id
  description  = "Tier of the Boundary cluster. One of 'standard' or 'plus'."
}

resource "tfe_variable" "hcp_client_id" {
  key          = "hcp_client_id"
  value        = var.hcp_client_id
  category     = "terraform"
  workspace_id = tfe_workspace.boundary.id
  description  = "Client ID of the Service Principal to authenticate with HCP."
}

resource "tfe_variable" "hcp_client_secret" {
  key          = "hcp_client_secret"
  value        = var.hcp_client_secret
  category     = "terraform"
  workspace_id = tfe_workspace.boundary.id
  description  = "Client secret of the Service Principal to authenticate with HCP."
  sensitive    = true
}

#############################################
#                   VAULT                   #
#############################################

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
  key          = "region"
  value        = var.region
  category     = "terraform"
  workspace_id = tfe_workspace.vault.id
  description  = "Region for the HCP Vault cluster."
}

resource "tfe_variable" "vault_hcp_client_id" {
  key          = "hcp_client_id"
  value        = var.hcp_client_id
  category     = "terraform"
  workspace_id = tfe_workspace.vault.id
  description  = "Client ID of the Service Principal to authenticate with HCP."
}

resource "tfe_variable" "vault_hcp_client_secret" {
  key          = "hcp_client_secret"
  value        = var.hcp_client_secret
  category     = "terraform"
  workspace_id = tfe_workspace.vault.id
  description  = "Client secret of the Service Principal to authenticate with HCP."
  sensitive    = true
}

resource "tfe_variable" "vault_hvn_id" {
  key          = "hcp_hvn_id"
  value        = var.hcp_hvn_id
  category     = "terraform"
  workspace_id = tfe_workspace.vault.id
  description  = "ID/name of the HVN."
}

#############################################
#              AWS VPC and HVN              #
#############################################

resource "tfe_variable" "hcp_hvn_id" {
  key          = "hcp_hvn_id"
  value        = var.hcp_hvn_id
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "ID/name of the HVN."
}

resource "tfe_variable" "hvn_region" {
  key          = "region"
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

resource "tfe_variable" "hvn_cloud_provider" {
  key          = "cloud_provider"
  value        = var.cloud_provider
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "Cloud provider for the HCP HVN."
}

resource "tfe_variable" "hvn_hcp_client_id" {
  key          = "hcp_client_id"
  value        = var.hcp_client_id
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "Client ID of the Service Principal to authenticate with HCP."
}

resource "tfe_variable" "hvn_hcp_client_secret" {
  key          = "hcp_client_secret"
  value        = var.hcp_client_secret
  category     = "terraform"
  workspace_id = tfe_workspace.vpc_hvn_peering.id
  description  = "Client secret of the Service Principal to authenticate with HCP."
  sensitive    = true
}