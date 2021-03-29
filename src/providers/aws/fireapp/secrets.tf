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

resource "random_password" "jwk_password" {
  length = 32
  special = true
  override_special = "_%@"
}

module "secretsmanager_jwk" {
  source = "../../../modules/secret/1/norotation"
  cost_centre = local.cost_centre
  environment = "dev"
  category = "app"
  secret_name = "jwk"
  entries = {
    secret: random_password.jwk_password.result
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