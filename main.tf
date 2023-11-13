# resource "aws_cloudfront_distribution" "name" {
#   aliases      = [""]
#   comment      = ""
#   enabled      = true
#   http_version = "http2"
#   price_class  = "PriceClass_100"
#   tags = merge(
#     local.common_tags,
#     {
#       name = ""
#     }
#   )

#   restrictions {
#     restriction_type = "none"
#   }
# }
