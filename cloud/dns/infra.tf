resource "cloudflare_dns_record" "cloud" {
  zone_id = var.cloudflare_zone_id
  name    = "cloud"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "de1" {
  zone_id = var.cloudflare_zone_id
  name    = "de1"
  content = "149.33.40.182"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "ru1" {
  zone_id = var.cloudflare_zone_id
  name    = "ru1"
  content = "201.24.118.2"
  type    = "A"
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

resource "cloudflare_dns_record" "proxy" {
  zone_id = var.cloudflare_zone_id
  name    = "*.cloud.lxft.dev"
  content = "cloud.lxft.dev"
  type    = "CNAME"
  ttl = 1
}

resource "cloudflare_dns_record" "proxy-custom-domain" {
  zone_id = var.cloudflare_zone_id
  name    = "*.lxft.dev"
  content = "cloud.lxft.dev"
  type    = "CNAME"
  ttl = 1
}
