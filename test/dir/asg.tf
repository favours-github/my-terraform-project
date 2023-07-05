# create a launch template
# terraform aws launch template
resource "aws_launch_template" "webserver_launch_template" {
  name          = var.launch_template_name
  description   = "launch template for my ec2 instance"

  monitoring {
    enabled = true
  }

  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
}


# create an ec2-instance
# Create an EC2 instance
resource "aws_instance" "webserver_instance" {
  ami           = "ami-04823729c75214919"  # Replace with the desired AMI ID
  instance_type = "t2.micro"      # Replace with the desired instance type
  key_name      = "my-key-pair"   # Replace with the name of your key pair

  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  subnet_id              = aws_subnet.webserver_subnet.id

  tags = {
    Name = "Webserver Instance"
  }
}

