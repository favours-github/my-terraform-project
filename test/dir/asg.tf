# create a launch template
# terraform aws launch template
resource "aws_launch_template" "webserver_launch_template" {
  name          = var.launch_template_name
  instance_id   = "i-05aee44e622e19f3e"
  description   = "launch template for my ec2 instance"

  monitoring {
    enabled = true
  }

  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
}

