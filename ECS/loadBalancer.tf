resource "aws_lb_target_group" "my_target_group" {
  name     = "target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id
    target_type = "ip"
}



resource "aws_lb" "my_load_balancer" {
  name               = "load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.security_group.id]
  subnets            = [aws_subnet.my_subnet0.id, aws_subnet.my_subnet1.id, aws_subnet.my_subnet2.id]

  enable_deletion_protection = false
}
