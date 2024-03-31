variable "projectName" {
  default = "tech-challenge-pos-tech"
}

variable "clusterName" {
  default = "tech-challenge"
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

variable "subnet_01_id" {
  default = "subnet-0a8e628515a86f8df"
}

variable "subnet_02_id" {
  default = "subnet-0dc42a41923392500"
}

variable "subnet_03_id" {
  default = "subnet-0bd942a3a3550120f"
}

variable "subnet_04_id" {
  default = "subnet-04a69234760025f8e"
}

variable "subnet_05_id" {
  default = "subnet-0b84de7e928a9376f"
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

variable "user_pool" {
  description = "NAME USER POOL"
}

variable "user_pool_client" {
  description = "NAME USER POOL CLIENT"
}

variable "allowed_oauth_scopes" {
 description = "ALLOWED OAUTH SCOPES"
}

variable "user_pool_domain" {
 description = "USER POOL DOMAIN"
}

variable "cognito_resource_server_name" {
  description = "NAME RESOURCE SERVER COGNITO"
}

variable "cognito_resource_server_identifier" {
  description = "IDENTIFIER RESOURCE SERVER COGNITO"
}

variable "cognito_scope_name" {
  description = "SCOPE NAME COGNITO"
}

variable "tags" {
  type = map(string)
  default = {
    App      = "EKS-KUBERNETES",
    Ambiente = "Desenvolvimento"
  }
}