output "cloudflare_dns_records_created" {
  value = {
    for k, v in cloudflare_record.cf_record :
    k => v.hostname
  }
}

output "route_53_dns_records_created" {
  value = {
    for k, v in aws_route53_record.aws_record :
    k => v.fqdn
  }
}
