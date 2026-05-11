resource "cloudflare_dns_record" "chat" {
  zone_id = var.zone_id
  name    = "chat"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "chat-rtc" {
  zone_id = var.zone_id
  name    = "chat-rtc"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}
