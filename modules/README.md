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