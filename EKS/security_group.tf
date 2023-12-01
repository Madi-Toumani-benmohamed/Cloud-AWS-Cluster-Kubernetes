#--------------Création de la security group---------------- 

resource "aws_security_group" "alb_security_group" {
  name        = "alb-security-group"
  description = "Allow traffic on port 80 and 30007"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 30007
    to_port     = 30007
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}