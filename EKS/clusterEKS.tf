resource "aws_eks_cluster" "my_cluster" {
  name     = "ben-eks"
  role_arn = aws_iam_role.eks_cluster.arn
  vpc_config {
    subnet_ids = [aws_subnet.my_subnet0.id, aws_subnet.my_subnet1.id]
  }
}

