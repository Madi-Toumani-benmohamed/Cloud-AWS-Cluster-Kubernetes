
resource "aws_ecs_task_definition" "my_task_definition" {
  family       = "service"
  network_mode = "awsvpc"
  cpu          = 1024
  memory       = 2048

  container_definitions = jsonencode([
    {
      name  = "web"
      image = "public.ecr.aws/g7l4n5q7/ben:latest"
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]

    }
  ])
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = data.aws_iam_role.example.arn

  runtime_platform {
    cpu_architecture = "X86_64"
  }

}
