resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "MonInternetGateway"
  }
}


#--------------Création de la table de routage----------------


resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "MaRouteTable"
  }
}


#--------------Création des tables d'associations----------------


resource "aws_route_table_association" "my_route_table_association0" {
  subnet_id      = aws_subnet.my_subnet0.id
  route_table_id = aws_route_table.my_route_table.id
}

resource "aws_route_table_association" "my_route_table_association1" {
  subnet_id      = aws_subnet.my_subnet1.id
  route_table_id = aws_route_table.my_route_table.id
}

resource "aws_route_table_association" "my_route_table_association2" {
  subnet_id      = aws_subnet.my_subnet2.id
  route_table_id = aws_route_table.my_route_table.id
}


