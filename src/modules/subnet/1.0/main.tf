resource "aws_subnet" "private_a" {
  vpc_id = var.vpc_id
  availability_zone = "${var.region}a"
  cidr_block = "172.30.16.0/20"
  tags = {
    Name = "${var.cost_centre}-${var.environment}-vpc-private-${var.region}a"
    "Cost Centre" = var.cost_centre
    "Environment" = local.environment_name[var.environment]
    "kubernetes.io/cluster/${var.cost_centre}-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id = var.vpc_id
  availability_zone = "${var.region}b"
  cidr_block = "172.30.32.0/20"
  tags = {
    Name = "${var.cost_centre}-${var.environment}-vpc-private-${var.region}b"
    "Cost Centre" = var.cost_centre
    "Environment" = local.environment_name[var.environment]
    "kubernetes.io/cluster/${var.cost_centre}-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id = var.vpc_id
  availability_zone = "${var.region}c"
  cidr_block = "172.30.48.0/20"
  tags = {
    Name = "${var.cost_centre}-${var.environment}-vpc-private-${var.region}c"
    "Cost Centre" = var.cost_centre
    "Environment" = local.environment_name[var.environment]
    "kubernetes.io/cluster/${var.cost_centre}-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id = var.vpc_id
  availability_zone = "${var.region}a"
  cidr_block = "172.30.128.0/20"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.cost_centre}-${var.environment}-vpc-public-${var.region}a"
    "Cost Centre" = var.cost_centre
    "Environment" = local.environment_name[var.environment]
    "kubernetes.io/cluster/${var.cost_centre}-${var.environment}" = "shared"
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_subnet" "public_b" {
  vpc_id = var.vpc_id
  availability_zone = "${var.region}b"
  cidr_block = "172.30.144.0/20"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.cost_centre}-${var.environment}-vpc-public-${var.region}b"
    "Cost Centre" = var.cost_centre
    "Environment" = local.environment_name[var.environment]
    "kubernetes.io/cluster/${var.cost_centre}-${var.environment}" = "shared"
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_subnet" "public_c" {
  vpc_id = var.vpc_id
  availability_zone = "${var.region}c"
  cidr_block = "172.30.160.0/20"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.cost_centre}-${var.environment}-vpc-public-${var.region}c"
    "Cost Centre" = var.cost_centre
    "Environment" = local.environment_name[var.environment]
    "kubernetes.io/cluster/${var.cost_centre}-${var.environment}" = "shared"
    "kubernetes.io/role/elb" = 1
  }
}