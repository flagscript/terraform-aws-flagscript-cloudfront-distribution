locals {
  common_tags = {
    "github:module:repository" = "flagscript/terraform-aws-flagscript-cloudfront-distribution"
    "terraform:module"         = "flagscript-cloudfront-distribution"
  }
  normalized_origin = replace(var.domain, ".", "-")
}
