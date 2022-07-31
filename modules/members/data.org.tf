# data source to get data from organisation
data "github_organization" "organisation" {
    name = "personalorganisation1"
    }



locals {
  # this variable stores the members list form the organisation
  org_members = data.github_organization.organisation.members
  
 org_member_map = tomap({for member in local.org_members: member=>member})
}