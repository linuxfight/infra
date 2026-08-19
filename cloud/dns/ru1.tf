resource "cloudflare_dns_record" "ru1" {
  zone_id = var.cloudflare_zone_id
  name    = "ru1"
  content = "201.24.118.2"
  type    = "A"
  ttl = 3600
  proxied = false
}

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

resource "cloudflare_dns_record" "ru1_proxy" {
  zone_id = var.cloudflare_zone_id
  name    = "*.ru1"
  content = "ru1.lxft.dev"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "lab" {
  zone_id = var.cloudflare_zone_id
  name    = "lab"
  content = "ru1.lxft.dev"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}
