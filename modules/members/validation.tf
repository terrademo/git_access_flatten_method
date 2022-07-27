# data source to get data from organisation
data "github_organization" "organisation" {
    name = "personalorganisation1"
    }


locals {
  # this variable stores the members list form the organisation
  org_members = data.github_organization.organisation.members
  
 org_mem_map = tomap({for member in local.org_members: member=>member})
}

locals {
# flatten the members.yaml file data and filter the data
  gh_members_flatten = flatten([for team,team_members in var.gh_members:[
    for i, member in team_members[*]:{   # using splat opetator in case the team_members variable is empty
      name = team
      username = member
    }  
  ]])

  #convert the above tuple to map
  gh_members_map = tomap({for i,team in local.gh_members_flatten:"${team.name}_${team.username}"=>team})
}
# gh_members_flatten = [
#        {
#            name     = "css-admin-release"
#            username = "RAGHAVA998998"
#         },
#        {
#            name     = "css-review-finacle"
#            username = "RAGHAVA998998"
#         },
#        {
#            name     = "ib-admin"
#            username = "RAGHAVA998998"
#         },
#        {
#            name     = "ib-bot"
#            username = "RAGHAVA998998"
#         },
#        {
#            name     = "ib-developers"
#            username = "RAGHAVA998998"
#         },
#        {
#            name     = "ib-developers"
#            username = "ranjith240198"
#         },
#        {
#            name     = "ib-release-lead"
#            username = "RAGHAVA998998"
#         },
#        {
#            name     = "ib-reviewer-codefresh"
#            username = "ranjith240198"
#         },
#        {
#            name     = "ib-reviewer-k8"
#            username = "RAGHAVA998998"
#         },
#        {
#            name     = "ib-reviewer-k8"
#            username = "ranjith240198"
#         },
#     ]