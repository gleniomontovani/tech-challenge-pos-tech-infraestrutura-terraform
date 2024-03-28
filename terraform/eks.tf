module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "${var.clusterName}-eks"
  cluster_version = "1.29"
  subnet_ids      = [var.subnet_01_private, var.subnet_02_private]
  vpc_id          = var.vpc_id

  cluster_endpoint_public_access  = false
  cluster_endpoint_private_access = true

  tags = var.tags

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

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
