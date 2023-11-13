module "distribution_bucket" {
  source               = "flagscript/flagscript-s3-bucket/aws"
  version              = "2.0.0"
  bucket_name_prefix   = "cloudfront"
  bucket_name_suffix   = local.normalized_origin
  is_cloudfront_bucket = true
}

module "distribution_bucket_policy" {
  source  = "flagscript/flagscript-s3-bucket/aws//modules/cloudfront-policy"
  version = "2.0.0"
  # insert the 2 required variables here
  bucket_name      = module.distribution_bucket.bucket_name
  distribution_arn = aws_cloudfront_distribution.cloudfront_distribution.arn
}
