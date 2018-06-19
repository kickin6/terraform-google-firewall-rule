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

  destination_ranges      = "${var.destination_ranges}"
  target_service_accounts = "${var.target_service_accounts}"
}
