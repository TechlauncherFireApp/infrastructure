resource "aws_vpc" "this" {
  cidr_block = "172.30.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    "Cost Centre" = var.cost_centre
    "Name" = "${var.cost_centre}-${var.environment}-vpc"
    "Environment" = local.environment_name[var.environment]
  }
}