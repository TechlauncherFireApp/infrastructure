module "vpc_dev" {
  source = "../../../modules/vpc/1.0"
  cost_centre = local.cost_centre
  environment = "dev"
  region = local.region
}
