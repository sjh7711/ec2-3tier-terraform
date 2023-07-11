resource "aws_db_instance" "rds" {
  allocated_storage      = 20
  identifier             = "mydb"
  db_name                = "wordpress"
  engine                 = "mysql"
  engine_version         = "5.7.42"
  instance_class         = "db.t2.micro"
  username               = "root"
  password               = "aws0701!"
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  availability_zone      = "ap-northeast-2a"
  db_subnet_group_name   = aws_db_subnet_group.subnetgroup.name
  vpc_security_group_ids = [aws_security_group.vpc-sg.id]

  # tags = {
  #   Name = "RDS"
  # }
}

output "rds_endpoint" {
  value = aws_db_instance.rds.endpoint
}
