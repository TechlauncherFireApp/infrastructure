resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id

  tags = {
    "Cost Centre" = var.cost_centre
    "Name" = "${var.cost_centre}-${var.environment}-igw"
    "Environment" = local.environment_name[var.environment]
  }
}