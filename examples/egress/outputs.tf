output "rule-allow-service-accounts" {
  value = "${module.rule-allow-service-accounts.rule_link}"
}

output "rule-allow-tags" {
  value = "${module.rule-allow-tags.rule_link}"
}

output "rule-deny-service-accounts" {
  value = "${module.rule-deny-service-accounts.rule_link}"
}

output "rule-deny-tags" {
  value = "${module.rule-deny-tags.rule_link}"
}
