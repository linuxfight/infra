terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
  }
}

provider "cloudflare" {
}

resource "cloudflare_dns_record" "vault" {
  zone_id = var.zone_id
  name    = "vault"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "waka" {
  zone_id = var.zone_id
  name    = "waka"
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

resource "cloudflare_dns_record" "dash" {
  zone_id = var.zone_id
  name    = "dash"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "auth" {
  zone_id = var.zone_id
  name    = "auth"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "music" {
  zone_id = var.zone_id
  name    = "music"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "feed" {
  zone_id = var.zone_id
  name    = "feed"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}
