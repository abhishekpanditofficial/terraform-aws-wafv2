ipset_name            = "test-ipset"
ipset_description     = "test-ipset-description"
ipset_scope           = "CLOUDFRONT"
ipset_address_version = "IPV4"
ipset_addresses       = ["1.2.3.4/32", "5.6.7.8/32"]
ipset_tags = {
  "project" = "test-project"
}

regexpattern_name        = "test-regexPattern"
regexpattern_description = "test regexpattern description"
regexpattern_scope       = "CLOUDFRONT"
regexpattern_one         = "one"
regexpattern_two         = "two"
regexpattern_tags = {
  "project" = "test"
}
ruleGroup_name        = "test-ruleGroup"
ruleGroup_description = "test rule group description"
ruleGroup_scope       = "CLOUDFRONT"
ruleGroup_capacity    = 500
ruleGroup_metric_name = "test-rule-group"
ruleGroup_tags = {
  "project" = "test"
}
acl_name        = "test-acl"
acl_description = "test-description"
metric_name     = "test-name"
project         = "test-project"
webAcl_tags = {
  "project" = "test"
}
