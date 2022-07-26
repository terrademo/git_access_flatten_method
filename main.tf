module "teams" {
    source = "./modules/teams"
    github_teams = local.github_css_teams   # this is there list of teams data injecting into teams child module
}

module "members" {
    source = "./modules/members"
    gh_members = tomap(yamldecode(file("./users.yaml"))).teams # injecting data from users.yaml into data members module

    # members module depends upon teams module
    depends_on = [
      module.teams
    ]
}