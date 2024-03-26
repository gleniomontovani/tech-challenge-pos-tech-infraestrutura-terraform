module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "tech-challenge-api-eks"
  cluster_version = "1.29"
  subnet_ids      = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id, aws_subnet.public_subnet_3.id]
  vpc_id          = aws_vpc.vpc_tech_challenge_api_eks.vpc_

  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = false

  tags = var.tags

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.micro"

    }
  }
  enable_cluster_creator_admin_permissions = true

  enable_irsa = true
}
