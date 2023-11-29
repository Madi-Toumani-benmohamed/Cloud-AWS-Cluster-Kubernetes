resource "aws_subnet" "my_subnet0" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.subnet_cidr_block[0]
  availability_zone       = data.aws_availability_zones.available.names[5]
  map_public_ip_on_launch = true

  tags = {
    Name = "BenSubnet"
  }
}


resource "aws_subnet" "my_subnet1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.subnet_cidr_block[1]
  availability_zone       = data.aws_availability_zones.available.names[6]
  map_public_ip_on_launch = true

  tags = {
    Name = "BenSubnet"
  }
}

resource "aws_subnet" "my_subnet2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.subnet_cidr_block[2]
  availability_zone       = data.aws_availability_zones.available.names[7]
  map_public_ip_on_launch = true

  tags = {
    Name = "BenSubnet"
  }
}