resource "cloudflare_dns_record" "de1" {
  zone_id = var.cloudflare_zone_id
  name    = "de1"
  content = "149.33.40.182"
  type    = "A"
  ttl = 3600
  proxied = false
}
