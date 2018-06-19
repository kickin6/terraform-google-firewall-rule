resource "google_compute_firewall" "rule" {
  name      = "${var.name == "" ? format("%s-ingress-allow-%s", var.network, var.protocol) : var.name}"
  project   = "${var.network_project == "" ? var.project : var.network_project}"
  network   = "${var.network}"
  priority  = "${var.priority}"
  direction = "INGRESS"

  allow {
    protocol = "${var.protocol}"
    ports    = "${var.ports}"
  }

  source_ranges = "${var.source_ranges}"
  source_tags   = "${var.source_tags}"
  target_tags   = "${var.target_tags}"
}
