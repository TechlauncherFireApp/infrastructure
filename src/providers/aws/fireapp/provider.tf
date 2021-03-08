provider "aws" {
  region = local.region
}

provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "fireapp-terraform"
    key = "state.json"
    region = "ap-southeast-2"
  }
}

data "terraform_remote_state" "remote-state" {
  backend = "s3"
  config = {
    bucket = "fireapp-terraform"
    key = "state.json"
    region = "ap-southeast-2"
  }
}