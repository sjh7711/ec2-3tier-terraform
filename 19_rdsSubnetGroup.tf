resource "aws_db_subnet_group" "subnetgroup" {
  name       = "subnetgroup"
  subnet_ids = concat(slice(aws_subnet.subnet[*].id, 4, 6))

  tags = {
    Name = "DB subnet group"
  }
}