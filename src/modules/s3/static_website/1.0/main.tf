resource "aws_s3_bucket" "bucket" {
  bucket = "${var.cost_centre}-${var.project_code}-${var.environment}-s3"
  acl = "public-read"

  logging {
    target_bucket = var.log_bucket_id
    target_prefix = "site/${var.environment}/${var.project_code}/"
  }

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  versioning {
    enabled = true
  }

  tags = {
    "Cost Centre" = var.cost_centre
    "Project" = var.project_code
    "Environment" = local.environment_name[var.environment]
  }
}