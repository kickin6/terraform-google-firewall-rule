# Egress deny Firewall Rule using Target Service Account

## Usage
```
module "firewall-1" {
    source                  = "github.com/kickin6/terraform-google-firewall-rule/modules/egress-deny-tags"
    name                    = "default-egress-deny-tags-api"
    project                 = "${var.project}"
    network                 = "default"
    priority                = "1000"
    protocol                = "${var.protocol}"
    ports                   = "${var.ports}"
    destination_ranges      = "${var.destination_ranges}"
    target_tags             = "${var.target_tags}"
}
```