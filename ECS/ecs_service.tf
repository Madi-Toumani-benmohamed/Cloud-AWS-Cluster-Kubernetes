resource "aws_ecs_service" "my_ecs_service" {
  name            = "ecs-service"
  cluster         = aws_ecs_cluster.my_cluster.id
  task_definition = aws_ecs_task_definition.my_task_definition.arn
  launch_type     = "FARGATE"
  desired_count   = 3

  network_configuration {
    subnets = [aws_subnet.my_subnet0.id, aws_subnet.my_subnet1.id, aws_subnet.my_subnet2.id]

    security_groups  = [aws_security_group.security_group.id]
    assign_public_ip = "true"
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.my_target_group.arn
    container_name   = "web"
    container_port   = 80
  }
}
