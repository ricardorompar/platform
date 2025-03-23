variable "aws_vpc_cidr" {
  description = "CIDR block for the AWS VPC."
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

variable "hcp_hvn_id" {
  description = "ID/name of the HVN."
  type        = string
  default     = "hcp-hvn-aws"
}

variable "peering_id" {
  description = "The ID of the HCP peering connection."
  type        = string
  default     = "peering"
}

variable "route_id" {
  description = "The ID of the HCP HVN route."
  type        = string
  default     = "dhvn-route"
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