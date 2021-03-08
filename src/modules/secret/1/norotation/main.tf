resource "aws_secretsmanager_secret" "secret" {
  name = "${var.category}/${var.environment}/${var.secret_name}"
  description = ""

  tags = {
    "Cost Centre" = var.cost_centre
    "Environment" = var.environment
  }
}

resource "aws_secretsmanager_secret_version" "secrets" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode(var.entries)
}