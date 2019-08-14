variable "domain" {
  description = "The domain name :/ ."
  default     = "luismayta.com"
}

variable "fqdn" {
  default = "luismayta.com"
}

variable "fqdn-root" {
  default = "www.luismayta.com"
}

# load data
data "aws_acm_certificate" "domain" {
  domain   = var.domain
  statuses = ["ISSUED"]
}