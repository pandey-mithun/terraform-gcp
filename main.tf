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

resource "google_compute_network" "vpc_network_custom" {
  name                    = "vpc-network-custom"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "network_with_private_secondary_ip_ranges" {
  for_each      = var.subnet
  name          = each.key
  ip_cidr_range = each.value.cidr_block
  region        = each.value.region
  network       = google_compute_network.vpc_network_custom.id
}
