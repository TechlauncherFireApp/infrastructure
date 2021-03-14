module "rds_giving_insight_dev" {
  source = "../../../modules/rds/myssql_db_instance/1.0"
  cost_centre = local.cost_centre
  environment = "dev"
  project_code = local.cost_centre
  region = local.region
  instance_class = "db.t2.micro"
  vpc_id = module.vpc_dev.this_vpc_id
  vpc_public_subnets = module.subnet_dev.this_vpc_public_subnet_ids
}