terraform {
  required_providers {

    github = {
        source = "integrations/github"
        version = "~> 4.0"
    }
  }
  required_version = ">= 1.0.11"
}

#required authentication are:-
#  1. personel access token 
#  2. name of the organization in owmer field
#  3. base_url if the enterprise github
provider "github" {
  token = var.token
  owner = var.owner
#   base_url = var.base_url
}