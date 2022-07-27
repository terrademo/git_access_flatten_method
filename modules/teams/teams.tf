
# resource to create a team
# required fields are name of the team
resource "github_team" "css_teams" {
  for_each = var.github_teams     # loop over github_teams variable
  name = each.value.name   # name of the team
  description = each.value.description  
  privacy = "closed"  # Must be one of secret or closed
}


