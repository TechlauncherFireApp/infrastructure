variable "cost_centre" {
  type = string
}
variable "environment" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "igw_id" {
  type = string
}
locals  {
  environment_name = {
    "dev" = "development"
    "tst" = "testing"
    "stg" = "staging"
    "prd" = "production"
  }
}