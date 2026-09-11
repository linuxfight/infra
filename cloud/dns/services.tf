resource "cloudflare_dns_record" "root" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  content = "cloud.lxft.dev"
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

resource "cloudflare_dns_record" "authelia" {
  zone_id = var.cloudflare_zone_id
  name    = "id"
  content = "cloud.lxft.dev"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "forgejo" {
  zone_id = var.cloudflare_zone_id
  name    = "git"
  content = "cloud.lxft.dev"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}
