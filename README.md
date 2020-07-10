# terraform-aws-s3-cloudfront-redirect

[![Build Status](https://travis-ci.org/equipindustry/terraform-aws-s3-cloudfront-redirect.svg?branch=master)](https://travis-ci.org/equipindustry/terraform-aws-s3-cloudfront-redirect) [![Latest Release](https://img.shields.io/github/release/equipindustry/terraform-aws-s3-cloudfront-redirect.svg)](https://travis-ci.org/equipindustry/terraform-aws-s3-cloudfront-redirect/releases)

Terraform module to provision an AWS S3 Redirect.

---

This project is part of our comprehensive ["LuisMayta"](https://luismayta.com) modules of terraform.

## Usage

```hcl
  module "redirect" {
    source              = "git::https://github.com/equipindustry/terraform-aws-s3-cloudfront-redirect.git?ref=develop"
    fqdn                = var.fqdn-root
    redirect_target     = var.fqdn
    ssl_certificate_arn = data.aws_acm_certificate.domain.arn

    refer_secret        = "${base64sha512("SUPER-REFER-SECRET${var.fqdn-root}*AGAIN")}"

    force_destroy       = "true"

    providers           = {
      "aws.main"        = aws.main
      "aws.cloudfront"  = aws.cloudfront
    }
  }
```

Full working example can be found in [example](./example) folder.

## Inputs

| Name    | Description                      |  Type  | Default | Required |
| ------- | -------------------------------- | :----: | :-----: | :------: |
| domain  | Domain name of the redirect host | string |   n/a   |   yes    |
| target  | URL that should be redirected to | string |   n/a   |   yes    |
| zone_id | Zone id                          | string |   n/a   |   yes    |

## Outputs

| Name             | Description |
| ---------------- | ----------- |
| hosted_zone_id   |             |
| website_domain   |             |
| website_endpoint |             |

## Help

**Got a question?**

File a GitHub [issue](https://github.com/equipindustry/terraform-aws-s3-cloudfront-redirect/issues), send us an [email][email] or join our [Slack Community][slack].

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/equipindustry/terraform-aws-s3-cloudfront-redirect/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing this project or [help out](https://github.com/luismayta) with our other projects, we would love to hear from you! Shoot us an [email](mailto:hola@luismayta.com).

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

1.  **Fork** the repo on GitHub
2.  **Clone** the project to your own machine
3.  **Commit** changes to your own branch
4.  **Push** your work back up to your fork
5.  Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest changes from "upstream" before making a pull request!

## Copyright

Copyright © 2018-2019 [Luismayta, LLC](https://luismayta.com)

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This project is maintained and funded by [Luismayta, LLC][website]. Like it? Please let us know at <hola@luismayta.com>

### Contributors

| [![Luis Mayta][luismayta_avatar]][luismayta_homepage]<br/>[Luis Mayta][luismayta_homepage] |
| ------------------------------------------------------------------------------------------ |


[luismayta_homepage]: https://github.com/luismayta
[luismayta_avatar]: https://github.com/luismayta.png?size=150
