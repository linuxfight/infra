terraform {
  required_providers {
    twc = {
      source = "tf.timeweb.cloud/timeweb-cloud/timeweb-cloud"
      version = ">= 1.8.0"
    }
  }
}

resource "twc_project" "ru-project" {
  name        = "ru"
  description = "Project for services in Russia"
}

data "twc_ssh_keys" "mac-key" {
  name = "mac"
}

data "twc_os" "ubuntu-26" {
  name    = "ubuntu"
  version = "26.04"
}
