resource "google_compute_firewall" "rule" {
  name      = "${var.name == "" ? format("%s-ingress-deny-%s", var.network, var.protocol) : var.name}"
  project   = "${var.network_project == "" ? var.project : var.network_project}"
  network   = "${var.network}"
  priority  = "${var.priority}"
  direction = "INGRESS"

  deny {
    protocol = "${var.protocol}"
    ports    = "${var.ports}"
  }

  source_ranges           = "${var.source_ranges}"
  source_service_accounts = "${var.source_service_accounts}"
  target_service_accounts = "${var.target_service_accounts}"
}
