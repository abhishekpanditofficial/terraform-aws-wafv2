variable "ipset_name" {
  type        = string
  description = "name for the ipset"
}
variable "ipset_description" {
  type        = string
  description = "description for the ipset"
}
variable "ipset_scope" {
  type        = string
  description = "Scope for the ipset"
}
variable "ipset_address_version" {
  type        = string
  description = "ipset address version IPV4/IPV6"
}

variable "ipset_tags" {
  type        = map(string)
  description = "Tags for client"
  default = {
    client = "nowfloats"
  }
}
variable "ipset_addresses" {
  type        = list(string)
  description = "Ip addresses for ipset"
}
variable "regexpattern_name" {
  type        = string
  description = "Name for regexpattern set"
}
variable "regexpattern_description" {
  type        = string
  description = "Description for regexpattern set"
}
variable "regexpattern_scope" {
  type        = string
  description = "Scope for Regexpattern sets"
}
variable "regexpattern_one" {
  type        = string
  description = "Regex pattern expression one"
}
variable "regexpattern_two" {
  type        = string
  description = "Regex pattern expression two"
}

variable "regexpattern_tags" {
  type        = map(string)
  description = "Tags for regexpatterns"
  default = {
    client = "nowfloats"
  }
}
variable "ruleGroup_name" {
  type        = string
  description = "Name for rule group"
}
variable "ruleGroup_description" {
  type        = string
  description = "Description for rule group"
}
variable "ruleGroup_scope" {
  type        = string
  description = "Scope for rule group"
}
variable "ruleGroup_capacity" {
  type        = number
  description = "capacity for rule group"
  default     = 500
}
variable "ruleGroup_cloudwatch_metrics_enabled" {
  type        = bool
  description = "Cloudwatch metrics status for ruleGroup"
  default     = false
}
variable "ruleGroup_sampled_requests_enabled" {
  type        = bool
  description = "Sample Requests status for ruleGroup"
  default     = false
}
variable "ruleGroup_metric_name" {
  type        = string
  description = "metric name for rulegroup"
}
variable "ruleGroup_tags" {
  type        = map(string)
  description = "Tags for regexpatterns"
  default = {
    client = "nowfloats"
  }
}


variable "acl_name" {
  type        = string
  description = "Acl name for the web-acl"
}

variable "acl_description" {
  type        = string
  description = "Acl description for the web-acl"
}

variable "metric_name" {
  type        = string
  description = "Metric name for the web-acl"
}

variable "project" {
  type        = string
  description = "project name for the web-acl"
}
variable "webAcl_cloudwatch_metrics_enabled" {
  type        = bool
  description = "Cloudwatch metrics status for webAcl"
  default     = false
}
variable "webAcl_sampled_requests_enabled" {
  type        = bool
  description = "Sample Requests status for webAcl"
  default     = false
}
variable "webAcl_tags" {
  type        = map(string)
  description = "Tags for webAcl"
  default = {
    project = "test"
  }
}
