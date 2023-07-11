resource "aws_route_table" "nat-rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.vpc-nat.id
  }

  tags = {
    Name = "nat-rt"
  }
}
