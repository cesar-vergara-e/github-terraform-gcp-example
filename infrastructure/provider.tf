terraform {
  cloud {
    organization = "tech-lead"

    workspaces {
      name = "gcp-example"
    }
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.34.0"
    }

  }
  required_version = "~> 1.2.8"
}

provider "google" {
  project     = var.project
  region      = var.region
  credentials = file(var.credentials)
}