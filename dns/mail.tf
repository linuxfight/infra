resource "cloudflare_dns_record" "maileroo1" {
  zone_id = var.zone_id
  name    = "@"
  content = "mx1.maileroo.com"
  type    = "MX"
  ttl = 3600
  priority = 10
}

resource "cloudflare_dns_record" "maileroo2" {
  zone_id = var.zone_id
  name    = "@"
  content = "mx2.maileroo.com"
  type    = "MX"
  ttl = 3600
  priority = 20
}

resource "cloudflare_dns_record" "maileroo_spf" {
  zone_id = var.zone_id
  name    = "@"
  content = "\"v=spf1 include:_spf.maileroo.com ~all\""
  type    = "TXT"
  ttl = 3600
}

resource "cloudflare_dns_record" "maileroo_dkim" {
  zone_id = var.zone_id
  name    = "mta._domainkey"
  content = "\"v=DKIM1;h=sha256;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnsw044nrOo/UxD6xElx6drcCcU93E44BS8CSGp3bw82qeyO8jHYI5CMVHLxsPYT6WRZGsHV2Qk++r7yr/klM0PmLahz6sHRNksJgntWZiwL8y5ivfcEjZxrofWpb4gfg9NPxIRLtSiaYZ4i+vW9QM2w7YGnXhAF0S7HuEs+1iVKHFmNFP8Ujl9d0G4HbvnvUiMzHn6Q6ZsQAFlgdtgC8T2V7phFPAaG8Y66QvgP8gdpQcy3abnTENLu7U8j2MdYse5YloODwjF9y0p4T1pNC0+xmY6nxrDeX2CVKI8MXGaHCZjP0CmHFW+rtq1XI+Pg8mK72L1x7re13g+6XjqUgfwIDAQAB\""
  type    = "TXT"
  ttl = 3600
}

resource "cloudflare_dns_record" "maileroo_dmarc" {
  zone_id = var.zone_id
  name    = "_dmarc"
  content = "\"v=DMARC1; p=reject;\""
  type    = "TXT"
  ttl = 3600
}
