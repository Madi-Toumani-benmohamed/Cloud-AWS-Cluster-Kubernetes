data "aws_availability_zones" "available" {
  all_availability_zones = true

}

data "aws_iam_role" "example" {
  name = "ecsTaskExecutionRole"
}
