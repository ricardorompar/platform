resource "tfe_workspace_run" "boundary_ws_run" {
  workspace_id = tfe_workspace.boundary.id

  apply {
    manual_confirm    = false
    wait_for_run      = false
    retry_attempts    = 3
    retry_backoff_min = 3
  }

  # Destroy example:
    # destroy {
    #   manual_confirm    = false
    #   wait_for_run      = true
    #   retry_attempts    = 2
    #   retry_backoff_min = 2
    # }
}


# # First run HVN and VPC workspace
resource "tfe_workspace_run" "hvn_ws_run" {
  workspace_id = tfe_workspace.vpc_hvn_peering.id

  apply {
    manual_confirm    = false
    wait_for_run      = false
    retry_attempts    = 3
    retry_backoff_min = 3
  }
}

# # Then Vault