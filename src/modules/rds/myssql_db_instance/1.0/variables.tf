variable "cost_centre" {
  type = string
}
variable "environment" {
  type = string
}
variable "region" {
  type = string
}
variable "project_code" {
  type = string
}
variable "instance_class" {
  type = string
  default = "db.m5.xlarge"
}
locals  {
  environment_name = {
    "dev" = "development"
    "tst" = "testing"
    "stg" = "staging"
    "prd" = "production"
  }
}
variable "vpc_id" {
  type = string
}
variable "vpc_public_subnets" {
  type = list(string)
}
variable "default_user" {
  type = string
  default = "givinginsight"
}
variable "deletion_protection" {
  type = map(string)
  default = {
    "dev" = false
    "tst" = true
    "stg" = true
    "prd" = true
  }
}