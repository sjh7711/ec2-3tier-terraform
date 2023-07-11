resource "aws_lb_target_group" "albTarget" {
  name     = "alb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id

  health_check {
    enabled             = true
    healthy_threshold   = 3 #3번을 건강하다고 판단해야 healthy
    interval            = 5
    matcher             = "200"
    path                = "/index.html"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 2
    unhealthy_threshold = 3
  }
}
