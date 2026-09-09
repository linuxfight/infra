resource "cloudflare_r2_bucket" "terraform_storage" {
  account_id    = var.cloudflare_account_id
  name          = "terraform-storage"
  location      = "weur"
  storage_class = "Standard"
}
