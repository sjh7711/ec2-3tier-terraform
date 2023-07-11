# resource "aws_instance" "sjh-ec2" {
#   ami                         = "ami-0ea4d4b8dc1e46212"
#   instance_type               = "t2.micro"
#   key_name                    = "sjh"
#   vpc_security_group_ids      = [aws_security_group.vpc-sg.id]
#   availability_zone           = "ap-northeast-2a"
#   private_ip                  = "10.0.0.10"
#   user_data                   = <<eof
#     #! /bin/bash
#     yum install -y httpd
#     echo "Hello Terraform " > /var/www/html/index.html
#     systemctl start httpd
#     eof
#   subnet_id                   = aws_subnet.Public-a.id
#   associate_public_ip_address = true
# }

# output "pub_ip" {
#   value = aws_instance.sjh-ec2.public_ip
# }
