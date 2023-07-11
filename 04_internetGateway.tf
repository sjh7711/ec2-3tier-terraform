resource "aws_internet_gateway" "vpc-ig" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "vpc-ig"
  }
}
