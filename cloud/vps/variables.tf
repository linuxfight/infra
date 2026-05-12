variable "cloudru_project_id" {
  description = "Cloud.ru Evolution project ID"
  type        = string
  sensitive   = true
}

variable "cloudru_auth_key_id" {
  description = "Cloud.ru Evolution auth key ID"
  type = string
  sensitive = true
}

variable "cloudru_auth_secret" {
  description = "Cloud.ru Evolution auth secret"
  type      = string
  sensitive = true
}
