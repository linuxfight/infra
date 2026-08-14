resource "cloudflare_dns_record" "cloud" {
  zone_id = var.cloudflare_zone_id
  name    = "cloud"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "id_staging" {
  zone_id = var.cloudflare_zone_id
  name    = "id.staging"
  content = "cloud.lxft.dev"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}
