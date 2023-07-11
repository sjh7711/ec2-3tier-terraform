resource "aws_lb_listener" "alb_listen" {
    load_balancer_arn = aws_lb.vpc-alb.arn
    port = 80
    protocol = "HTTP"

    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.albTarget.arn
    }
  
}