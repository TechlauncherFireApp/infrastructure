resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  tags = {
    "Cost Centre" = var.cost_centre
    "Name" = "${var.cost_centre}-${var.environment}-private"
    "Environment" = local.environment_name[var.environment]
  }
}