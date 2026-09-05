resource "cloudflare_dns_record" "root" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  content = "ru1.lxft.dev"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  content = "lxft.dev"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}
