module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "tech-challenge-api-eks"
  cluster_version = "1.29"
  subnet_ids = [var.subnet_01_id, var.subnet_02_id, var.subnet_03_id, var.subnet_04_id, var.subnet_05_id]
  vpc_id = var.vpc_id

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
