resource "aws_wafv2_web_acl" "example" {
  name        = var.acl_name
  description = var.acl_description
  scope       = "CLOUDFRONT"

  default_action {
    allow {}
  }

  rule {
    // terraform format
    name     = "rule-1"
    priority = 1

    override_action {
      count {}
    }

    statement {
      rule_group_reference_statement {
        arn = var.ruleGroup_arn
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "friendly-rule-metric-name"
      sampled_requests_enabled   = false
    }
  }

  tags = var.webAcl_tags

  visibility_config {
    cloudwatch_metrics_enabled = var.webAcl_cloudwatch_metrics_enabled
    metric_name                = var.metric_name
    sampled_requests_enabled   = var.webAcl_sampled_requests_enabled
  }
}
