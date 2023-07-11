# resource "aws_route_table_association" "sjh-rtaa" {
#   subnet_id      = aws_subnet.Public-a.id
#   route_table_id = aws_route_table.vpc-rt.id
# }

# resource "aws_route_table_association" "sjh-rtac" {
#   subnet_id      = aws_subnet.Public-c.id
#   route_table_id = aws_route_table.vpc-rt.id
# }

resource "aws_route_table_association" "sjh-rtaac" {
  count = 2
  subnet_id      = aws_subnet.subnet[count.index].id
  route_table_id = aws_route_table.vpc-rt.id
}
