# Egress Deny Firewall Rule using Target Service Account

## Usage
```
module "firewall-1" {
    source                  = "github.com/kickin6/terraform-google-firewall-rule/modules/egress-deny-service-accounts"
    name                    = "default-egress-deny-service-accounts-api"
    project                 = "${var.project}"
    network                 = "default"
    priority                = "1000"
    protocol                = "${var.protocol}"
    ports                   = "${var.ports}"
    target_service_accounts = "${var.target_service_accounts}"
    destination_ranges      = "${var.destination_ranges}"
}
```