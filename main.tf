locals {
  origin_id = "${local.normalized_origin}-s3-origin"
}

resource "aws_cloudfront_origin_access_control" "origin_access_control" {
  name                              = var.domain
  description                       = "Origin access control for ${var.domain}."
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "cloudfront_distribution" {
  aliases             = [var.domain]
  comment             = "Distribution for ${var.domain}."
  default_root_object = var.default_root_object
  enabled             = true
  is_ipv6_enabled     = true
  http_version        = "http2"
  price_class         = "PriceClass_100"
  tags = merge(
    local.common_tags,
    {
      Name = "${local.normalized_origin}-distribution"
    }
  )

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD", "OPTIONS"]
    cached_methods         = ["GET", "HEAD"]
    cache_policy_id        = var.cache_policy_id
    compress               = true
    target_origin_id       = local.origin_id
    viewer_protocol_policy = "redirect-to-https"
  }

  origin {
    domain_name              = module.distribution_bucket.bucket_regional_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.origin_access_control.id
    origin_id                = local.origin_id
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = aws_acm_certificate.distribution_certificate.arn
    minimum_protocol_version = "TLSv1.2_2021"
    ssl_support_method       = "sni-only"
  }

}
