resource "aws_eip" "AWSEIP" {
  instance = "${aws_instance.AWSInstance.id}"
  vpc      = true

  tags {
    Name = "${var.ProjectName} - ${var.RoleName} Elastic IP"
  }
}
