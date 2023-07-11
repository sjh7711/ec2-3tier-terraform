resource "aws_autoscaling_attachment" "ASGattach" {
    autoscaling_group_name = aws_autoscaling_group.ASGroup.id
    lb_target_group_arn = aws_lb_target_group.albTarget.id  
}