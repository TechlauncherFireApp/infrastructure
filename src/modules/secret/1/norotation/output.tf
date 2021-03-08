output "this_arn" {
  value = aws_secretsmanager_secret.secret.arn
}

output "this_id" {
  value = aws_secretsmanager_secret.secret.id
}

output "this_name" {
  value = aws_secretsmanager_secret.secret.name
}