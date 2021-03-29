variable "cost_centre" {
  type = string
}
variable "environment" {
  type = string
}
variable "project_code" {
  type = string
}
variable "log_bucket_id" {
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