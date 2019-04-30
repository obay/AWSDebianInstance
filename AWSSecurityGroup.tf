resource "aws_security_group" "AWSSecurityGroup" {
  name        = "${var.ProjectName} - ${var.RoleName} Security Group"
  description = "Allow ${var.RoleName} specific ports"
  vpc_id      = "${var.AWSVPC}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow All"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.ProjectName} - ${var.RoleName} Security Group"
  }
}
