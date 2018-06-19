# Ingress Allow Firewall Rule using Target Tags

## Usage
```
module "firewall-1" {
    source                  = "github.com/kickin6/terraform-google-firewall-rule/modules/ingress-deny-tags"
    name                    = "default-ingress-deny-tcp-8080"
    project                 = "${var.project}"
    network                 = "default"
    priority                = "1000"
    protocol                = "${var.protocol}"
    ports                   = "${var.ports}"
    target_tags             = "${var.target_tags}"
}
```