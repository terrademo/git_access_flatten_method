variable "base_url" {
  type = string
  description = "url of the enterprise github server"
  default = "https://github.service.anz/"
}
variable "owner"{
    type = string
    description = "organisation name"
    default = "personalorganisation1"
}

variable "token" {
  type = string
  description = "personel access token"
  default = "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"
}


# output "gh_members_flatten" {
#   value = module.members.gh_members_flatten
# }
# output "gh_members" {
#   value = module.members.gh_members
# }
