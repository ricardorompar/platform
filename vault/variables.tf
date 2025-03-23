variable "vault_cluster_id" {
  description = "The ID of the HCP Vault dedicated deployment."
  type        = string
}

variable "vault_tier" {
  description = "Tier of the HCP Vault cluster. Valid options for tiers."
  type        = string
}

variable "region" {
  description = "Region for the HCP HVN and Vault cluster."
  type        = string
}

variable "hcp_hvn_id" {
  description = "ID/name of the HVN."
  type        = string
}

# HCP Auth
variable "hcp_client_id" {
  description = "Client ID of the Service Principal to authenticate with HCP."
  type = string
}

variable "hcp_client_secret" {
  description = "Client secret of the Service Principal to authenticate with HCP."
  type = string
}