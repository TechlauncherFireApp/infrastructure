module "elastic_beanstalk_app" {
  source = "../../../modules/elastic_beanstalk/application/1.0"
  project_code = local.cost_centre
}

module "elastic_beanstalk_dev" {
  source = "../../../modules/elastic_beanstalk/environment/1.0"
  application_name = module.elastic_beanstalk_app.this_application_name
  environment = "dev"
  project_code = local.cost_centre
}