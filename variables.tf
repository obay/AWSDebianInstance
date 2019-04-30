variable "ProjectName" {
  type        = "string"
  description = "Customer name that will be used to tag all related resources"
}

variable "Subdomain" {
  type        = "string"
  description = "Customer sub-domain name that will be used for FQDN"
}

variable "AWSInstanceType" {
  type        = "string"
  description = "AWS Instance type from the list in https://aws.amazon.com/ec2/instance-types/"
}

variable "AWSSubnet" {
  type        = "string"
  description = "Amazon AWS Subnet to be used for creating new resources."
}

variable "AWSVPC" {
  type        = "string"
  description = "Amazon AWS VPC to be used for creating new resources."
}

variable "RoleName" {
  type        = "string"
  description = "Name given to the server to identify what it does."
}

variable "AWSDNSZoneID" {
  type        = "string"
  description = "Amazon AWS Route 53 Zone ID"
}

variable "AWSKeyPairName" {
  type        = "string"
  description = "AWS Key Pair Name"
}

variable "TopDomainName" {
  type        = "string"
  description = "Top level domain that will be used for the new Route 53 record creted."
}

# variable "SSHKeyNamespace" {
#   type        = "string"
#   description = "AWS Key Pair Namespace"
# }

# variable "SSHKeyStage" {
#   type        = "string"
#   description = "AWS Key Pair Stage"
# }

# variable "SSHKeyFolder" {
#   type        = "string"
#   description = "AWS Key Pair Folder"
# }
