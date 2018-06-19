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

# Sub-Modules

Because some variables will not work when combined with certain other variables, these sub-modules are pre-configured to use compatible variables.

Here is a list of incompatible variables.

## direction = INGRESS
- `destination_ranges`

## direction = EGRESS
- `source_ranges`
- `source_tags`

## source_service_accounts
- `source_tags`
- `target_tags`

## target_service_accounts
- `source_tags`
- `target_tags`
