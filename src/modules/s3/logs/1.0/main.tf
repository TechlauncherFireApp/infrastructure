resource "aws_s3_bucket" "log_bucket" {
  bucket = "${var.cost_centre}-logs-s3"
  acl = "log-delivery-write"

  tags = {
    "Cost Centre" = var.cost_centre
  }
}