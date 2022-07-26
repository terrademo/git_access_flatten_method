# get the organization teams data using the below data source 
data "github_organization_teams" "all" {}




# adding users to teams 
resource "github_team_membership" "some_team_membership" {
  # loop over the gh_members_map using for_each
  for_each = local.gh_members_map
  #required fields are team_id and username
  team_id  = local.team_members["${each.value.name}"].id 
  username = each.value.username
}