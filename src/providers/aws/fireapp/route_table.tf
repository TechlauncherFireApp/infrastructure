module "route_table_public_dev" {
  source = "../../../modules/route_table/public/1.0"
  cost_centre = local.cost_centre
  environment = "dev"
  vpc_id = module.vpc_dev.this_vpc_id
  igw_id = module.igw_dev.this_igw_id
}
module "route_table_private_dev" {
  source = "../../../modules/route_table/private/1.0"
  cost_centre = local.cost_centre
  environment = "dev"
  vpc_id = module.vpc_dev.this_vpc_id
}