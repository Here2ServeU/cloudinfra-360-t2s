resource "google_compute_firewall" "web" {
  name    = var.firewall_name
  network = var.vpc_name
  allow {
    protocol = var.firewall_protocol
    ports    = var.firewall_ports
  }
  direction     = var.direction
  source_ranges = var.source_ranges
}

resource "google_kms_key_ring" "t2s_ring" {
  name     = var.kms_ring_name
  location = var.location
  project  = var.project_id
}

resource "google_kms_crypto_key" "t2s_key" {
  name            = var.kms_key_name
  key_ring        = google_kms_key_ring.t2s_ring.id
  rotation_period = var.rotation_period
}

resource "google_compute_security_policy" "armor" {
  name = var.armor_policy_name
}
