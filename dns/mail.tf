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
  content = "\"v=DKIM1;h=sha256;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuzj4iUspSzMgMfdGuyscTP8v/RorIxj5WrraZ1Q3G5bSiLevmmTd5MFlSIikj627+2Qul5ODWlxWBchR394JgTF/Mvj8TSj9TG+Cs9uDx50sWpfg6KgJ+V0mnBTpMYMJ23+HdZMVRl5lhD4B9QCMj0yHoD4LMdZTdq4sSK1RzJ91QBr/Oe8QTClks7v/1YErmL09dx5BeCWsOc8Fitsh5VWaViLCNARU/CdRLIVdn0L0sr+JKtIeK9tOEc9I6X4h6KmsDsGjJSggZwQ+DwQSydg8PJUgAKI86d1UmeMTym5FR0yGCKwULFBwXQlx7U8u5OQCjUnE9rIcDYAXaxRXnQIDAQAB\""
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
