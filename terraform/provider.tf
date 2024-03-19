terraform {
  backend "s3" {
    bucket = "terraform-fiapgp68"
    key = "techchallenge-app/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.regionDefault
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  docker_credentials {
    username = var.dockerhub_username
    password = var.dockerhub_password
  }

  default_tags {
    tags = var.tags
  }
}
