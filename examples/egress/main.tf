module "rule-allow-service-accounts" {
  source                  = "../../modules/egress-allow-service-accounts"
  name                    = "default-egress-allow-service-accounts-rule1"
  project                 = "${var.project}"
  network                 = "${var.network}"
  priority                = "${var.priority}"
  protocol                = "${var.protocol}"
  ports                   = "${var.ports}"
  target_service_accounts = "${var.target_service_accounts}"
  destination_ranges      = "${var.destination_ranges}"
}

module "rule-allow-tags" {
  source             = "../../modules/egress-allow-tags"
  name               = "default-egress-allow-tags-rule2"
  project            = "${var.project}"
  network            = "${var.network}"
  priority           = "${var.priority}"
  protocol           = "${var.protocol}"
  ports              = "${var.ports}"
  destination_ranges = "${var.destination_ranges}"
  target_tags        = "${var.target_tags}"
}

module "rule-deny-service-accounts" {
  source                  = "../../modules/egress-deny-service-accounts"
  name                    = "default-egress-deny-service-accounts-rule3"
  project                 = "${var.project}"
  network                 = "${var.network}"
  priority                = "${var.priority}"
  protocol                = "${var.protocol}"
  ports                   = "${var.ports}"
  target_service_accounts = "${var.target_service_accounts}"
  destination_ranges      = "${var.destination_ranges}"
}

module "rule-deny-tags" {
  source             = "../../modules/egress-deny-tags"
  name               = "default-egress-deny-tags-rule4"
  project            = "${var.project}"
  network            = "${var.network}"
  priority           = "${var.priority}"
  protocol           = "${var.protocol}"
  ports              = "${var.ports}"
  destination_ranges = "${var.destination_ranges}"
  target_tags        = "${var.target_tags}"
}