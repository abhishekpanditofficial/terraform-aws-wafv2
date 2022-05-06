terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

module "ipSet" {
  source                = "./modules/terraform-aws-ipsets"
  ipset_name            = var.ipset_name
  ipset_description     = var.ipset_description
  ipset_scope           = var.ipset_scope
  ipset_address_version = var.ipset_address_version
  ipset_addresses       = var.ipset_addresses
  ipset_tags            = var.ipset_tags
}

module "regexPatternSet" {
  source                   = "./modules/terraform-aws-regexpattern"
  regexpattern_name        = var.regexpattern_name
  regexpattern_description = var.regexpattern_description
  regexpattern_scope       = var.regexpattern_scope
  regexpattern_one         = var.regexpattern_one
  regexpattern_two         = var.regexpattern_two
  regexpattern_tags        = var.regexpattern_tags
}

module "ruleGroup" {
  source                = "./modules/terraform-aws-ruleGroup"
  ruleGroup_name        = var.ruleGroup_name
  ruleGroup_description = var.ruleGroup_description
  ipset_arn             = module.ipSet.ipset_arn
  regexPatternSet_arn   = module.regexPatternSet.regexpattern_arn
  ruleGroup_scope       = var.ruleGroup_scope
  ruleGroup_capacity    = var.ruleGroup_capacity
  ruleGroup_metric_name = var.ruleGroup_metric_name
  ruleGroup_tags        = var.ruleGroup_tags
}

module "webAcl" {
  source          = "./modules/terraform-aws-acl"
  acl_name        = var.acl_name
  acl_description = var.acl_description
  metric_name     = var.metric_name
  project         = var.project
  ruleGroup_arn   = module.ruleGroup.ruleGroup_arn
  webAcl_tags     = var.webAcl_tags
}
