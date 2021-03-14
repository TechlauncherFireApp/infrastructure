resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = {
    "Cost Centre" = var.cost_centre
    "Name" = "${var.cost_centre}-${var.environment}-public"
    "Environment" = local.environment_name[var.environment]
  }
}