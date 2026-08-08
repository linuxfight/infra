resource "twc_firewall" "default_deny" {
  name        = "default-deny"
  description = "Default deny, allow only SSH and HTTPS"

  link {
    id   = twc_server.ru1.id
    type = "server"
  }
}

// SSH
resource "twc_firewall_rule" "allow_ssh_v4" {
  firewall_id = twc_firewall.default_deny.id
  description = "Allow SSH (IPv4)"

  direction = "ingress"
  protocol  = "tcp"
  port      = "22"
  cidr      = "0.0.0.0/0"
}

resource "twc_firewall_rule" "allow_ssh_v6" {
  firewall_id = twc_firewall.default_deny.id
  description = "Allow SSH (IPv6)"

  direction = "ingress"
  protocol  = "tcp6"
  port      = "22"
  cidr      = "::/0"
}

# HTTPS
resource "twc_firewall_rule" "allow_https_v4" {
  firewall_id = twc_firewall.default_deny.id
  description = "Allow HTTPS (IPv4)"

  direction = "ingress"
  protocol  = "tcp"
  port      = "443"
  cidr      = "0.0.0.0/0"
}

resource "twc_firewall_rule" "allow_https_v6" {
  firewall_id = twc_firewall.default_deny.id
  description = "Allow HTTPS (IPv6)"

  direction = "ingress"
  protocol  = "tcp6"
  port      = "443"
  cidr      = "::/0"
}

// HTTPS (8443)
resource "twc_firewall_rule" "allow_8443_v4" {
  firewall_id = twc_firewall.default_deny.id
  description = "Allow HTTPS (IPv4)"

  direction = "ingress"
  protocol  = "tcp"
  port      = "8443"
  cidr      = "0.0.0.0/0"
}

resource "twc_firewall_rule" "allow_8443_v6" {
  firewall_id = twc_firewall.default_deny.id
  description = "Allow HTTPS (IPv6)"

  direction = "ingress"
  protocol  = "tcp6"
  port      = "8443"
  cidr      = "::/0"
}
