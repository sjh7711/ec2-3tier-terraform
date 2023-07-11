resource "aws_autoscaling_group" "ASGroup" {
  name                      = "ASGroup"
  min_size                  = 1
  max_size                  = 5
  desired_capacity          = 1
  health_check_grace_period = 60
  health_check_type         = "EC2"
  force_delete              = false
  vpc_zone_identifier       = concat(slice(aws_subnet.subnet[*].id,2, 4))
  launch_template {
    id      = aws_launch_template.startTemplate.id
    version = "$Latest"
  }
}
