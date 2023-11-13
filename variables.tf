# REQUIRED PARAMETERS
# These parameters must be supplied when consuming this module.
variable "domain" {
  description = "The domain of the cloudfront distribution"
  type        = string
}

# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# variable "deploy_wildcard_cert" {
#   default     = false
#   description = "Whether or not to deploy a wildard domain in the certificate."
#   type        = bool
# }
