# get the organization teams data using the below data source 
data "github_organization_teams" "all" {}

#get the teams and team members data from organization
locals {
  # all_teams variable is a tuple
  all_teams = data.github_organization_teams.all.teams

  # convert the above variable to a map
  team_members = {for i, team in local.all_teams:team.name=>team}
  
}

