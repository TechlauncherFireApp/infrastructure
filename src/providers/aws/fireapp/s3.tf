module "s3_logs" {
  source = "../../../modules/s3/logs/1.0"
  cost_centre = local.cost_centre
}

module "s3_website_giving_insight_dev" {
  source = "../../../modules/s3/static_website/1.0"
  cost_centre = local.cost_centre
  environment = "dev"
  log_bucket_id = module.s3_logs.this_s3_id
  project_code = local.cost_centre
}