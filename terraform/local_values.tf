locals {
  owner   = "Maybelle"
  project = "tkcicd"
  region  = "us-east-1"

  common_tags = {
    Project = local.project
    Owner   = local.owner
  }
}