variable "org_name" {
  description = "Name of the HCP Terraform organization."
  type        = string
  default     = "r2-org"
}

# Boundary workspace variables
variable "boundary_cluster_id" {
  description = "The name of the Boundary cluster."
  type        = string
}

variable "boundary_username" {
  description = "Username for the admin user of the Boundary cluster."
  type        = string
}

variable "boundary_password" {
  description = "Password for the admin user of the Boundary cluster."
  type        = string
}

variable "boundary_tier" {
  description = "Password for the admin user of the Boundary cluster."
  type        = string
}

variable "project_id" {
  description = "The ID of the project in HCP."
  type        = string
}

# Vault workspace variables
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

variable "cloud_provider" {
  description = "Cloud provider for the HCP HVN and Vault cluster."
  type        = string
}

# AWS VPC and HVN workspace variables
variable "hcp_hvn_id" {
  description = "ID/name of the HVN."
  type        = string
}

variable "aws_vpc_cidr" {
  description = "CIDR block for the AWS VPC."
  type        = string
}

# HCP Auth
variable "hcp_client_id" {
  description = "Client ID of the Service Principal to authenticate with HCP."
  type        = string
}

variable "hcp_client_secret" {
  description = "Client secret of the Service Principal to authenticate with HCP."
  type        = string
}