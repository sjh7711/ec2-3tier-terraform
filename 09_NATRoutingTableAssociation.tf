# resource "aws_route_table_association" "sjh-rtaWASa" {
#   subnet_id      = aws_subnet.WAS-a.id
#   route_table_id = aws_route_table.nat-rt.id
# }

# resource "aws_route_table_association" "sjh-rtaWASc" {
#   subnet_id      = aws_subnet.WAS-c.id
#   route_table_id = aws_route_table.nat-rt.id
# }

resource "aws_route_table_association" "sjh-rtaWASac" {
  count = 2
  subnet_id      = aws_subnet.subnet[count.index+2].id
  route_table_id = aws_route_table.vpc-rt.id
}
