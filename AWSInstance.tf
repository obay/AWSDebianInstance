resource "aws_instance" "AWSInstance" {
  ami                    = "${var.InstanceAMI}"
  instance_type          = "${var.AWSInstanceType}"
  subnet_id              = "${var.AWSSubnet}"
  key_name               = "${var.AWSKeyPairName}"
  vpc_security_group_ids = ["${aws_security_group.AWSSecurityGroup.id}"]

  tags {
    Name = "${var.ProjectName} - ${var.RoleName} Instance"
  }
}
