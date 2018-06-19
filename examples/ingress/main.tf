module "rule-allow-service-accounts" {
  source                  = "../../modules/ingress-allow-service-accounts"
  name                    = "default-ingress-allow-service-accounts-rule1"
  project                 = "${var.project}"
  network                 = "${var.network}"
  priority                = "${var.priority}"
  protocol                = "${var.protocol}"
  ports                   = "${var.ports}"
  source_service_accounts = "${var.source_service_accounts}"
  target_service_accounts = "${var.target_service_accounts}"
}

module "rule-allow-tags" {
  source             = "../../"
  name               = "default-ingress-allow-tags-rule2"
  project            = "${var.project}"
  network            = "${var.network}"
  priority           = "${var.priority}"
  protocol           = "${var.protocol}"
  ports              = "${var.ports}"
  target_tags        = "${var.target_tags}"
}

module "rule-deny-service-accounts" {
  source                  = "../../modules/ingress-deny-service-accounts"
  name                    = "default-ingress-deny-service-accounts-rule3"
  project                 = "${var.project}"
  network                 = "${var.network}"
  priority                = "${var.priority}"
  protocol                = "${var.protocol}"
  ports                   = "${var.ports}"
  source_service_accounts = "${var.source_service_accounts}"
  target_service_accounts = "${var.target_service_accounts}"
}

module "rule-deny-tags" {
  source             = "../../modules/ingress-deny-tags"
  name               = "default-ingress-deny-tags-rule4"
  project            = "${var.project}"
  network            = "${var.network}"
  priority           = "${var.priority}"
  protocol           = "${var.protocol}"
  ports              = "${var.ports}"
  target_tags        = "${var.target_tags}"
}