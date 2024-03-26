resource "aws_vpc" "vpc_tech_challenge_api_eks" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc_tech_challenge_api_eks"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.vpc_tech_challenge_api_eks.id
  cidr_block              = var.subnet_01_cidr_block
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "eks_api_fiap_public_subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.vpc_tech_challenge_api_eks.id
  cidr_block              = var.subnet_02_cidr_block
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "eks_api_fiap_public_subnet_2"
  }
}

resource "aws_subnet" "public_subnet_3" {
  vpc_id                  = aws_vpc.vpc_tech_challenge_api_eks.id
  cidr_block              = var.subnet_03_cidr_block
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "eks_api_fiap_public_subnet_3"
  }
}


