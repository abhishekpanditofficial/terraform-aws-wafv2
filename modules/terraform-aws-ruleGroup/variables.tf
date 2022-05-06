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
variable "ipset_arn" {
  type        = string
  description = "arn for ipset"
}
variable "regexPatternSet_arn" {
  type        = string
  description = "arn for regexpatternset"
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
