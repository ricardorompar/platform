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

# HCP Auth
variable "hcp_client_id" {
  description = "Client ID of the Service Principal to authenticate with HCP."
  type = string
}

variable "hcp_client_secret" {
  description = "Client secret of the Service Principal to authenticate with HCP."
  type = string
}