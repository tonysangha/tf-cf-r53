### Cloudflare account variables

variable "cloudflare_api_token" {
  description = "Cloudflare API Token"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "The Cloudflare UUID for the Zone to use."
  type        = string
  sensitive   = true
}

### AWS account variables

variable "aws_zone_id" {
  description = "The AWS Route 53 zone id"
  type        = string
  sensitive   = true
}

### DNS Records to create

variable "dns_records" {
  description = "DNS records to create"
  type        = map(any)
  default     = {}
}