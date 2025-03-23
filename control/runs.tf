# resource "tfe_workspace_run" "boundary_ws_run" {
#   workspace_id = tfe_workspace.boundary.id

#   apply {
#     manual_confirm    = true
#     wait_for_run      = true
#     retry_attempts    = 2
#     retry_backoff_min = 2
#   }

#   # Destroy example:
#     destroy {
#       manual_confirm    = false
#       wait_for_run      = true
#       retry_attempts    = 2
#       retry_backoff_min = 2
#     }
# }


# # First run HVN and VPC workspace

# # Then Vault