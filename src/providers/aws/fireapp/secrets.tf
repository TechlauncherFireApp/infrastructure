module "secretsmanager_gmail_fireappaccess" {
  source = "../../../modules/secret/1/norotation"
  cost_centre = local.cost_centre
  environment = "prod"
  category = "admin"
  secret_name = "gmail"
  entries = {
    username: "fireappaccess@gmail.com"
  }
}

module "secretsmanager_aws_root" {
  source = "../../../modules/secret/1/norotation"
  cost_centre = local.cost_centre
  environment = "prod"
  category = "aws"
  secret_name = "root"
  entries = {
    username: "teamfireapp@gmail.com"
  }
}