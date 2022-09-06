# Create Record's in AWS

resource "aws_route53_record" "aws_record" {

  for_each = var.dns_records

  zone_id = var.aws_zone_id

  name    = each.value.name
  type    = each.value.type
  ttl     = each.value.ttl
  records = [each.value.value]
}

# Create Record's in Cloudflare

resource "cloudflare_record" "cf_record" {

  for_each = var.dns_records

  zone_id = var.cloudflare_zone_id
  name    = each.value.name
  value   = each.value.value
  type    = each.value.type
  ttl     = each.value.ttl
}