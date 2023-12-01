resource "aws_lb_target_group" "my_target_group" {
  name     = "target-group-eks"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id

}
