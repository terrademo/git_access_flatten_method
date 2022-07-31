
# adding users to teams 
resource "github_team_membership" "some_team_membership" {
  # loop over the gh_members_map using for_each
  for_each = local.gh_members_map
  #required fields are team_id and username
  team_id  = local.team_members["${each.value.name}"].id
  username = lookup(local.org_member_map,each.value.username)   # the lookup throws error if not org_member_map
}

# resource "null_resource" "validation" {
#   triggers = false?"no error":file("ERROR ${var.gh_members}" )
# }