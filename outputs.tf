output "acm_certificate_arn" {
  description = "ARN of the certificate."
  value       = aws_acm_certificate.distribution_certificate.arn
}

output "acm_domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation."
  value       = aws_acm_certificate.distribution_certificate.domain_validation_options
}

output "distribution_bucket_arn" {
  description = "Arn of the distribution bucket."
  value       = module.distribution_bucket.bucket_arn
}

output "distribution_bucket_name" {
  description = "Name of the distribution bucket."
  value       = module.distribution_bucket.bucket_name
}

output "distribution_arn" {
  description = "ARN for the distribution."
  value       = aws_cloudfront_distribution.cloudfront_distribution.arn
}

output "distribution_domain_name" {
  description = "Domain name corresponding to the distribution."
  value       = aws_cloudfront_distribution.cloudfront_distribution.domain_name
}

output "distribution_hosted_zone_id" {
  description = "CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to."
  value       = aws_cloudfront_distribution.cloudfront_distribution.hosted_zone_id
}

output "distribution_id" {
  description = "Identifier for the distribution."
  value       = aws_cloudfront_distribution.cloudfront_distribution.id
}
