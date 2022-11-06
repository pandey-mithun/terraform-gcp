variable "boolVariable" {
  type = bool
}

locals {
  a = 100
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.42.1"
    }
  }
}

provider "google" {

  project = "studious-lyceum-366409"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "vpc-network3"
}
