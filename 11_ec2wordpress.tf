resource "aws_instance" "sjh-ec2" {
  ami                         = "ami-0ea4d4b8dc1e46212"
  instance_type               = "t2.micro"
  key_name                    = "sjh"
  vpc_security_group_ids      = [aws_security_group.vpc-sg.id]
  availability_zone           = "ap-northeast-2a"
  private_ip                  = "10.0.0.10"
  user_data                   = file("./install.sh")
  # user_data                   = <<EOF
  #   #! /bin/bash
  #   sudo yum install -y httpd
  #   amazon-linux-extras enable php7.4
  #   sudo yum install -y php php-cli php-pdo php-fpm php-json php-mysqlnd mariadb
  #   wget https://ko.wordpress.org/wordpress-5.8.6-ko_KR.tar.gz
  #   tar xvfz wordpress-5.8.6-ko_KR.tar.gz
  #   sudo cp -a wordpress/* /var/www/html/
  #   sudo chown apache.apache /var/www/html/*
  #   sudo cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
  #   sudo sed -i 's/DirectoryIndex index.html/DirectoryIndex index.php/g' /etc/httpd/conf/httpd.conf
  #   sudo sed -i 's/database_name_here/wordpress/g' /var/www/html/wp-config.php
  #   sudo sed -i 's/username_here/root/g' /var/www/html/wp-config.php
  #   sudo sed -i 's/password_here/aws0701!/g' /var/www/html/wp-config.php
  #   sudo sed -i 's/localhost/${aws_db_instance.rds.endpoint}/g' /var/www/html/wp-config.php
  #   cat > /var/www/html/index.html << end
  #   <html><body><h1>AWS-WEBSERVER</h1></body></html>
  #   end
  #   sudo systemctl start httpd  
  #   sudo systemctl enable httpd
  #   EOF
  subnet_id                   = aws_subnet.subnet[0].id
  associate_public_ip_address = true
  # subnet_id                   = aws_subnet.Public-a.id

  depends_on = [
    aws_db_instance.rds
  ]
}

output "pub_ip" {
  value = aws_instance.sjh-ec2[*].public_ip
}

