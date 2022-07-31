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



