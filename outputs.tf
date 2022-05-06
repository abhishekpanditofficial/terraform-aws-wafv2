output "ipset_name" {
  value = module.ipSet.ipset_name
}
output "ipset_id" {
  value = module.ipSet.ipset_id
}
output "ipset_arn" {
  value = module.ipSet.ipset_arn
}
output "ipset_addresses" {
  value = module.ipSet.ipset_addresses
}
output "ipset_address_version" {
  value = module.ipSet.ipset_address_version
}

output "regexpattern_arn" {
  value = module.regexPatternSet.regexpattern_arn
}
output "regexpattern_id" {
  value = module.regexPatternSet.regexpattern_id
}
output "regexpattern_name" {
  value = module.regexPatternSet.regexpattern_name
}
output "regexpattern_expression" {
  value = module.regexPatternSet.regexpattern_expression
}

output "ruleGroup_arn" {
  value = module.ruleGroup.ruleGroup_arn
}
output "ruleGroup_id" {
  value = module.ruleGroup.ruleGroup_id
}
output "ruleGroup_name" {
  value = module.ruleGroup.ruleGroup_name
}
output "ruleGroup_rule" {
  value = module.ruleGroup.ruleGroup_rule
}
output "ruleGroup_capacity" {
  value = module.ruleGroup.ruleGroup_capacity
}

output "acl_arn" {
  value = module.webAcl.acl_arn
}

output "acl_id" {
  value = module.webAcl.acl_id
}

output "acl_lockToken" {
  value = module.webAcl.acl_lockToken
}

output "acl_name" {
  value = module.webAcl.acl_name
}
