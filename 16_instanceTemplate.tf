resource "aws_launch_template" "startTemplate" {
  name = "startTemplate"
  block_device_mappings {
    device_name = "/dev/sdf"
    ebs {
      volume_size = 10
      volume_type = "gp2"
    }
  }
  image_id               = aws_ami_from_instance.aws_ami.id
  instance_type          = "t2.micro"
  key_name               = "sjh"
  vpc_security_group_ids = [aws_security_group.vpc-sg.id]
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "startTemplate"
    }
  }
  user_data = filebase64("${path.module}/installT.sh")
}
