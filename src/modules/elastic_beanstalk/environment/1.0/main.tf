resource "aws_elastic_beanstalk_environment" "environment" {
  name                = "${var.project_code}-${var.environment}"
  application         = var.application_name
  solution_stack_name = "64bit Amazon Linux 2 v3.2.0 running Python 3.7"
  setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
      }
}