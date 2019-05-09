resource "aws_volume_attachment" "AWSVolumeAttachment" {
  device_name = "/dev/xvda"
  volume_id   = "${AWSEBSVolume.id}"
  instance_id = "${AWSInstance.id}"
}
