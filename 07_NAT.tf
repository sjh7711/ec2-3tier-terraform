resource "aws_eip" "vpc-eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "vpc-nat" {
  allocation_id = aws_eip.vpc-eip.id
  subnet_id     = aws_subnet.subnet[0].id
  # subnet_id     = aws_subnet.Public-a.id

  tags = {
    Name = "vpc-NAT"
  }

  #비동기 작업
  depends_on = [aws_internet_gateway.vpc-ig]
}
