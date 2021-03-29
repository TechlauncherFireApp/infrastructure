output "this_application_id" {
  value = aws_elastic_beanstalk_environment.environment.id
}

output "this_application_arn" {
  value = aws_elastic_beanstalk_environment.environment.arn
}

output "this_application_name" {
  value = aws_elastic_beanstalk_environment.environment.name
}
