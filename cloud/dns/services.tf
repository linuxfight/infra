resource "cloudflare_dns_record" "vault" {
  zone_id = var.cloudflare_zone_id
  name    = "vault"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "lab" {
  zone_id = var.cloudflare_zone_id
  name    = "lab"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "waka" {
  zone_id = var.cloudflare_zone_id
  name    = "waka"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "chat" {
  zone_id = var.cloudflare_zone_id
  name    = "chat"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "livekit" {
  zone_id = var.cloudflare_zone_id
  name    = "lk"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "turn" {
  zone_id = var.cloudflare_zone_id
  name    = "turn"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}
