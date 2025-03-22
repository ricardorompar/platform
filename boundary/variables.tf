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

variable "hcp_project_id" {
  description = "The ID of the project in HCP."
  type        = string
}