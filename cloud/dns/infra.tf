resource "cloudflare_dns_record" "cloud" {
  zone_id = var.cloudflare_zone_id
  name    = "cloud"
  content = "85.208.85.194"
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

resource "cloudflare_dns_record" "auth" {
  zone_id = var.cloudflare_zone_id
  name    = "auth"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "s3" {
  zone_id = var.cloudflare_zone_id
  name    = "s3"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "dash" {
  zone_id = var.cloudflare_zone_id
  name    = "dash"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}
