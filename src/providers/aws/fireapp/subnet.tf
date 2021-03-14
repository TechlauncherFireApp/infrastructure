module "subnet_dev" {
  source = "../../../modules/subnet/1.0"
  cost_centre = local.cost_centre
  environment = "dev"
  region = local.region
  vpc_id = module.vpc_dev.this_vpc_id
}