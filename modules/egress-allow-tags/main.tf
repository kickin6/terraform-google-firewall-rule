resource "google_compute_firewall" "rule" {
  name      = "${var.name == "" ? format("%s-egress-allow-%s", var.network, var.protocol) : var.name}"
  project   = "${var.network_project == "" ? var.project : var.network_project}"
  network   = "${var.network}"
  priority  = "${var.priority}"
  direction = "EGRESS"

  allow {
    protocol = "${var.protocol}"
    ports    = "${var.ports}"
  }

  target_tags        = "${var.target_tags}"
  destination_ranges = "${var.destination_ranges}"
}
