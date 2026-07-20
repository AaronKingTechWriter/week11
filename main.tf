resource "aws_security_group" "web" {
  name        = "lab8-security-group"
  description = "Lab 8 security group"
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.web.id
  cidr_ipv4         = "10.0.0.0/24"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  description       = "Allow HTTP from internal subnet"
}
