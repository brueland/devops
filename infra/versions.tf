terraform {
  backend "s3" {
    region   = "nyc3"
    bucket   = "sbs-terraform"
    key      = "terraform.tfstate"
    endpoint = "nyc3.digitaloceanspaces.com"

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_metadata_api_check     = true
  }
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
  required_version = ">= 0.13"
}
