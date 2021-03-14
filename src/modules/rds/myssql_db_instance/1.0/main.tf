resource "random_password" "password" {
  length = 16
  special = true
  override_special = "_%@"
}

resource "aws_db_subnet_group" "this_subnet_group" {
  name = "${var.project_code}-${var.environment}-db-subnet-group"
  subnet_ids = var.vpc_public_subnets

  tags = {
    "Cost Centre" = var.cost_centre
    "Project" = var.project_code
    "Environment" = local.environment_name[var.environment]
    "Name" = "${var.project_code}-${var.environment}-db-subnet-group"
  }
}

resource "aws_db_parameter_group" "this_parameter_group" {
  name   = "${var.cost_centre}-${var.project_code}-${var.environment}-mysql-pg"
  family = "mysql8.0"
}

resource "aws_db_instance" "this" {
  depends_on = [
    aws_db_subnet_group.this_subnet_group]

  identifier = "${var.project_code}-${var.environment}-db"
  name = "appdb"
  instance_class = var.instance_class

  allocated_storage = 100
  storage_type = "gp2"
  storage_encrypted = false

  engine = "mysql"
  engine_version = "8.0"
  parameter_group_name = aws_db_parameter_group.this_parameter_group.name

  username = var.default_user
  password = random_password.password.result

  port = 5432
  publicly_accessible = true
  performance_insights_enabled = false
  skip_final_snapshot = true

  deletion_protection = var.deletion_protection[var.environment]

  maintenance_window = "Sun:09:00-Sun:11:00"
  backup_window = "11:00-13:00"
  backup_retention_period = 7

  tags = {
    "Cost Centre" = var.cost_centre
    "Project" = var.project_code
    "Environment" = local.environment_name[var.environment]
    "Name" = "${var.project_code}-${var.environment}-db"
  }

  db_subnet_group_name = "${var.project_code}-${var.environment}-db-subnet-group"
}



resource "aws_secretsmanager_secret" "db_connection" {
  name = "database/${var.environment}/${var.project_code}"
}

locals {
  db_connection = {
    username = aws_db_instance.this.username
    engine = "mysql"
    dbname = aws_db_instance.this.name
    host = aws_db_instance.this.address
    password = random_password.password.result
    port = aws_db_instance.this.port
    dbInstanceIdentifier = aws_db_instance.this.identifier
    convertUnicode = "True"
  }
  type = "map"
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id     = aws_secretsmanager_secret.db_connection.id
  secret_string = jsonencode(local.db_connection)
}