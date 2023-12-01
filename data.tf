data "aws_availability_zones" "available" {
  #all_availability_zones = true
  state = "available"

}

data "aws_iam_role" "example" {
  name = "ecsTaskExecutionRole"
}
