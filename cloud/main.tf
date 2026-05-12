terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }

    # cloudru = {
    #   source  = "cloud.ru/cloudru/cloud"
    #   version = "2.0.0"
    # }
  }
}

provider "cloudflare" {
}

module "dns" {
  source = "./dns"
  cloudflare_zone_id = var.cloudflare_zone_id
  cloudflare_account_id = var.cloudflare_account_id
  cloudflare_domain = var.cloudflare_domain
}

# provider "cloudru" {
#   project_id  = var.cloudru_project_id
#   auth_key_id = var.cloudru_auth_key_id
#   auth_secret = var.cloudru_auth_secret
#
#   region = "ru-central-1"
#
#   endpoints = {
#     iam_endpoint            = "iam.api.cloud.ru:443"
#     compute_endpoint        = "compute.api.cloud.ru:443"
#     baremetal_endpoint      = "baremetal.api.cloud.ru:443"
#     mk8s_endpoint           = "mk8s.api.cloud.ru:443"
#     vpc_endpoint            = "vpc.api.cloud.ru:443"
#     magic_router_endpoint   = "magic-router.api.cloud.ru"
#     dns_endpoint            = "dns.api.cloud.ru:443"
#     nlb_endpoint            = "nlb.api.cloud.ru"
#     kafka_endpoint          = "kafka.api.cloud.ru:443"
#     redis_endpoint          = "redis.api.cloud.ru:443"
#     object_storage_endpoint = "https://s3.cloud.ru"
#   }
# }
