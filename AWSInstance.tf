resource "aws_instance" "AWSInstance" {
  # ami                    = "${data.aws_ami.debian.id}"
  ami                    = "ami-0ca467408e84df23c"
  instance_type          = "${var.AWSInstanceType}"
  subnet_id              = "${var.AWSSubnet}"
  key_name               = "${var.AWSKeyPairName}"
  vpc_security_group_ids = ["${aws_security_group.AWSSecurityGroup.id}"]

  tags {
    Name = "${var.ProjectName} - ${var.RoleName} Instance"
  }
}
