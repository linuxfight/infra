terraform {
  backend "s3" {
    bucket = "terraform-storage"
    key    = "terraform-storage/terraform.tfstate"
    region = "auto"

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true

    use_path_style = true
  }
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

module "s3" {
  source = "./s3"
  cloudflare_account_id = var.cloudflare_account_id
}
