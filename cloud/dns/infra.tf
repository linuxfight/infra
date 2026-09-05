resource "cloudflare_dns_record" "cloud" {
  zone_id = var.cloudflare_zone_id
  name    = "cloud"
  content = "85.208.85.194"
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

resource "cloudflare_dns_record" "de1" {
  zone_id = var.cloudflare_zone_id
  name    = "de1"
  content = "2.27.28.109"
  type    = "A"
  ttl = 3600
  proxied = false
}
