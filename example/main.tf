module "redirect" {
  source = "github.com/equipindustry/terraform-aws-s3-cloudfront-redirect"

  fqdn                = var.fqdn-root
  redirect_target     = var.fqdn
  ssl_certificate_arn = data.aws_acm_certificate.domain.arn

  refer_secret = "${base64sha512("SUPER-REFER-SECRET${var.fqdn-root}*AGAIN")}"

  force_destroy = "true"

  providers = {
    "aws.main"       = aws.main
    "aws.cloudfront" = aws.cloudfront
  }
}
