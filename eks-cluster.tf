
resource "aws_eks_cluster" "my_cluster" {
  name     = "my-eks-cluster"
  role_arn = aws_iam_role.cluster.arn
  vpc_config {
    subnet_ids = module.vpc.private_subnets  # Replace with your desired subnet IDs
  }
  tags = {
    Environment = var.environment
    Project     = var.project
  }
}

resource "aws_eks_node_group" "my_node_group" {
  cluster_name    = aws_eks_cluster.my_cluster.name
  node_group_name = "my-node-group"
  node_role_arn   = aws_iam_role.my_node_role.arn
  subnet_ids      = module.vpc.private_subnets   # Replace with your desired subnet IDs

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 3
  }
}


resource "aws_iam_instance_profile" "my_node_profile" {
  name = "my-node-profile"
  role = aws_iam_role.my_node_role.name
}