# Network Firewall Rule Module 

Modular Network Firewall Rule on Google Compute Engine for Terraform.

# Ingress Allow Firewall Rule using Target Tags

## Usage
```
module "firewall-1" {
    source                  = "github.com/kickin6/terraform-google-firewall-rule"
    name                    = "default-ingress-deny-tcp-80"
    project                 = "${var.project}"
    network                 = "default"
    priority                = "1000"
    protocol                = "${var.protocol}"
    ports                   = "${var.ports}"
    target_tags             = "${var.target_tags}"
}
```