resource "aws_ami_from_instance" "aws_ami" {
  name               = "aws-ami"
  source_instance_id = aws_instance.sjh-ec2.id

  depends_on = [
    aws_instance.sjh-ec2
  ]
}
