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
variable "ruleGroup_arn" {
  type        = string
  description = "Arn of the rule-group to be attached"
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
