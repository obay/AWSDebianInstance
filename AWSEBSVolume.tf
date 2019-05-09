resource "aws_ebs_volume" "AWSEBSVolume" {
  availability_zone = "${aws_instance.AWSInstance.availability_zone.id}"
  size              = 20

  tags = {
    Name = "${var.ProjectName} - ${var.RoleName} EBS Volume"
  }
}
