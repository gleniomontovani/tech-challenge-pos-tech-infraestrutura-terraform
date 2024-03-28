variable "projectName" {
  default = "tech-challenge-pos-tech"
}

variable "clusterName" {
  default = "tech-challenge-api"
}

variable "regionDefault" {
  default = "us-east-1"
}

variable "aws_access_key" {
  description = "ACCESS KEY AWS"
}

variable "aws_secret_key" {
  description = "SECRET ACCESS AWS"
}

variable "subnet_01_private" {
  default = "subnet-0a8e628515a86f8df"
}

variable "subnet_02_private" {
  default = "subnet-0dc42a41923392500"
}

variable "vpc_cidr_block" {
  default = "172.31.0.0/16"
}

variable "vpc_id" {
  default = "vpc-008501f5a531a84b1"
}

variable "aws_account" {
  description = "ACCOUNT AWS"
}

variable "tags" {
  type = map(string)
  default = {
    App      = "EKS-APP",
    Ambiente = "Desenvolvimento"
  }
}