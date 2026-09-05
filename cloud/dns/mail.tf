resource "cloudflare_email_routing_dns" "routing_dns" {
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_email_routing_address" "destination" {
  account_id = var.cloudflare_account_id
  email      = var.admin_email
}

resource "cloudflare_email_routing_rule" "admin_route" {
  zone_id = "e4e8385e15cf41143c4b2d250640b964"
  name    = "Forward admin@lxft.dev to private email"
  enabled = true

  matchers = [{
    type  = "literal"
    field = "to"
    value = "admin@lxft.dev"
  }]

  actions = [{
    type  = "forward"
    value = [cloudflare_email_routing_address.destination.email]
  }]
}
