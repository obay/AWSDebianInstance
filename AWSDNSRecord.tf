resource "aws_route53_record" "AWSDNSRecord" {
  zone_id = "${var.AWSDNSZoneID}"
  name    = "${lower(var.Subdomain)}.${var.TopDomainName}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_eip.AWSEIP.public_ip}"]
}
