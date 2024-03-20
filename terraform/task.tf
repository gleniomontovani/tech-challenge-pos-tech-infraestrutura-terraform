resource "aws_ecs_task_definition" "task" {
  family = "TSK-${var.projectName}"
  container_definitions = jsonencode([
    {
      name      = "${var.projectName}"
      essential = true,
      image     = "${var.docker_hub_image_url}:latest",
      command   = ["-Dsonar.search.javaAdditionalOpts=-Dnode.store.allow_mmap=false"]
      environment = [
        {
          name  = "API_JDBC_URL"
          value = "jdbc:postgresql://${var.db_endpoint}:5432/${var.db_name}"
        },
        {
          name  = "API_JDBC_USERNAME"
          value = "${var.db_username}"
        },
        {
          name  = "API_JDBC_PASSWORD"
          value = "${var.db_password}"
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          awslogs-group         = "${aws_cloudwatch_log_group.cloudwatch-log-group.name}"
          awslogs-region        = "${var.regionDefault}"
          awslogs-stream-prefix = "ecs"
        }
      }
      portMappings = [
        {
          containerPort = 8081
          hostPort      = 8081
          protocol      = "tcp"
        }
      ]
    }
  ])
  network_mode = "awsvpc"

  requires_compatibilities = ["FARGATE"]

  execution_role_arn = "arn:aws:iam::${var.AWSAccount}:role/ecsTaskExecutionRole"

  memory = "4096"
  cpu    = "2048"

}