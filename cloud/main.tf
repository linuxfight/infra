provider "cloudflare" {
}

module "dns" {
  source = "./dns"
  cloudflare_zone_id = var.cloudflare_zone_id
  cloudflare_account_id = var.cloudflare_account_id
  cloudflare_domain = var.cloudflare_domain
  admin_email = var.admin_email
}

module "vm" {
  source = "./vm"
}
