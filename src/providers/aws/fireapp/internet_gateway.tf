module "igw_dev" {
  source = "../../../modules/internet_gateway/1.0"
  cost_centre = local.cost_centre
  environment = "dev"
  vpc_id = module.vpc_dev.this_vpc_id
}