locals {
# teams data
  github_css_teams = {
       css-admin-release     = {
           description = "Approving the change to master"
           name        = "css-admin-release"
           privacy     = "closed"
        }
       css-review-finacle    = {
           description = "PR reviewer for Finacle components"
           name        = "css-review-finacle"
           privacy     = "closed"
        }
       ib-admin              = {
           description = "IB Acceleration Team"
           name        = "ib-admin"
           privacy     = "closed"
        }
       ib-bot                = {
           description = "Only Service Account fur automation"
           name        = "ib-bot"
           privacy     = "closed"
        }
       ib-developers         = {
           description = "IB Engineers Pool"
           name        = "ib-developers"
           privacy     = "closed"
        }
       ib-release-lead       = {
           description = ""
           name        = "ib-release-lead"
           privacy     = "closed"
        }
       ib-reviewer-codefresh = {
           description = "Reviewing Codefresh changes in IB"
           name        = "ib-reviewer-codefresh"
           privacy     = "closed"
        }
       ib-reviewer-k8        = {
           description = "Reviewing K8 Changes in IB"
           name        = "ib-reviewer-k8"
           privacy     = "closed"
        }
    }
}