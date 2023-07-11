resource "aws_lb" "vpc-alb" {
  name            = "alb"
  internal        = false
  security_groups = [aws_security_group.vpc-sg.id]
  subnets         = concat(slice(aws_subnet.subnet[*].id, 0, 2))
  tags = {
    Name = "alb"
  }
}

output "alb_dnsname" {
  value = aws_lb.vpc-alb.dns_name
}

# subnets         = [aws_subnet.Public-a.id, aws_subnet.Public-c.id] # concat(aws_subnet.Public[*].id)
