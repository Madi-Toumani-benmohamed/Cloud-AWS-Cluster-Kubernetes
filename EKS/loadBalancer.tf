resource "aws_lb" "my_load_balancer" {
  name               = "my-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_security_group.id]
  subnets            = [aws_subnet.my_subnet0.id, aws_subnet.my_subnet1.id]
}