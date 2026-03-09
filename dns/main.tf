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

resource "cloudflare_dns_record" "muse" {
  zone_id = var.zone_id
  name    = "muse"
  content = "85.208.85.194"
  type    = "A"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "muse-ghp" {
  zone_id = var.zone_id
  name    = "muse-ghp"
  content = "cringedrivendevelopment.github.io"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "prod" {
  zone_id = var.zone_id
  name    = "prod"
  content = "linuxfight.github.io"
  type    = "CNAME"
  ttl = 3600
  proxied = false
}

resource "cloudflare_dns_record" "discord" {
  zone_id = var.zone_id
  name    = "_discord"
  content = "\"dh=308261e0a88d3efd5ec69e4be43ad06ba3355dcd\""
  type    = "TXT"
  ttl = 3600
}
