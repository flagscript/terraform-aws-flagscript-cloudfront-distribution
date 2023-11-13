resource "aws_acm_certificate" "distribution_certificate" {
  domain_name       = var.domain
  key_algorithm     = "EC_prime256v1"
  validation_method = "DNS"
  tags = merge(
    local.common_tags,
    {
      Name = var.domain
    }
  )

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }
}
