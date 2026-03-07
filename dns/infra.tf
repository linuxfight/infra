resource "cloudflare_dns_record" "cloud" {
  zone_id = var.zone_id
  name    = "cloud"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "cloud-fi" {
  zone_id = var.zone_id
  name    = "cloud-fi"
  content = "144.31.155.113"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "www" {
  zone_id = var.zone_id
  name    = "www"
  content = "lxft.tech"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}
