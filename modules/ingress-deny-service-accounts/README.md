# Ingress Deny Firewall Rule using Service Accounts

## Usage
```
module "firewall-1" {
    source                  = "github.com/kickin6/terraform-google-firewall-rule/modules/ingress-deny-service-accounts"
    name                    = "default-ingress-deny-tcp-80"
    project                 = "${var.project}"
    network                 = "default"
    priority                = "1000"
    protocol                = "${var.protocol}"
    ports                   = "${var.ports}"
    source_service_accounts = "${var.source_service_accounts}"
    target_service_accounts = "${var.target_service_accounts}"
}
```