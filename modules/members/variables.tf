#variable to accept members list form root module
variable "gh_members" {
  }
# {
#        css-admin-release     = [
#            "RAGHAVA998998",
#         ]
#        css-review-finacle    = [
#            "RAGHAVA998998",
#         ]
#        ib-admin              = [
#            "RAGHAVA998998",
#         ]
#        ib-bot                = [
#            "RAGHAVA998998",
#         ]
#        ib-developers         = [
#            "RAGHAVA998998",
#            "ranjith240198",
#            "raghavamotati",
#         ]
#        ib-release-lead       = [
#            "RAGHAVA998998",
#         ]
#        ib-reviewer-codefresh = [
#            "ranjith240198",
#         ]
#        ib-reviewer-k8        = [
#            "RAGHAVA998998",
#            "ranjith240198",
#         ]
#     }




#get the teams and team members data from organization
locals {
  # all_teams variable is a tuple
  all_teams = data.github_organization_teams.all.teams

  # convert the above variable to a map
  team_members = {for i, team in local.all_teams:team.name=>team}
  
}


 





output "gh_members_flatten" {
  value = local.gh_members_flatten
}
output "gh_members" {
  value = var.gh_members
}