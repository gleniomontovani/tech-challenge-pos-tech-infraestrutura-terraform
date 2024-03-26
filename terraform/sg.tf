resource "aws_security_group" "sg_tech_challenge_api_eks" {
  name        = "SG-${var.projectName}"
  description = var.projectName
  vpc_id      = aws_vpc.vpc_tech_challenge_api_eks.id

  ingress {
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port                = 8081
    to_port                  = 8081
    protocol                 = "tcp"
    cidr_blocks              = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_tech_challenge_api_eks"
  }
}