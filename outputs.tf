output "acm_certificate_arn" {
  description = "ARN of the certificate."
  value       = aws_acm_certificate.distribution_certificate.arn
}

output "acm_domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation."
  value       = aws_acm_certificate.distribution_certificate.domain_validation_options
}
