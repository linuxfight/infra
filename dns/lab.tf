resource "cloudflare_dns_record" "dash" {
  zone_id = var.zone_id
  name    = "dash"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "lab" {
  zone_id = var.zone_id
  name    = "lab"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}
