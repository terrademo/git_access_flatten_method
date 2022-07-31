#variable to accept members list form users.yaml
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