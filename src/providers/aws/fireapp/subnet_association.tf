resource "aws_route_table_association" "dev_public_a" {
  subnet_id = module.subnet_dev.this_vpc_public_subnet_ids[0]
  route_table_id = module.route_table_public_dev.this_route_table_id
}

resource "aws_route_table_association" "dev_public_b" {
  subnet_id = module.subnet_dev.this_vpc_public_subnet_ids[1]
  route_table_id = module.route_table_public_dev.this_route_table_id
}

resource "aws_route_table_association" "dev_public_c" {
  subnet_id = module.subnet_dev.this_vpc_public_subnet_ids[2]
  route_table_id = module.route_table_public_dev.this_route_table_id
}

resource "aws_route_table_association" "dev_private_a" {
  subnet_id = module.subnet_dev.this_vpc_private_subnet_ids[0]
  route_table_id = module.route_table_private_dev.this_route_table_id
}

resource "aws_route_table_association" "dev_private_b" {
  subnet_id = module.subnet_dev.this_vpc_private_subnet_ids[1]
  route_table_id = module.route_table_private_dev.this_route_table_id
}

resource "aws_route_table_association" "dev_private_c" {
  subnet_id = module.subnet_dev.this_vpc_private_subnet_ids[2]
  route_table_id = module.route_table_private_dev.this_route_table_id
}