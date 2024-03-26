variable "projectName" {
  default = "tech-challenge-pos-tech"
}

variable "clusterName" {
  default = "PosTech"
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

variable "subnet_01_cidr_block" {
  default = "10.0.1.0/24"
}

variable "subnet_02_cidr_block" {
  default = "10.0.2.0/24"
}

variable "subnet_03_cidr_block" {
  default = "10.0.3.0/24"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "AWSAccount" {
  default = "211125728576"
}

variable "tags" {
  type = map(string)
  default = {
    App      = "tech-challenge-pos-tech",
    Ambiente = "Desenvolvimento"
  }
}