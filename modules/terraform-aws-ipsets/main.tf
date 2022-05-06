resource "aws_wafv2_ip_set" "example" {
  name               = var.ipset_name
  description        = var.ipset_description
  scope              = var.ipset_scope
  ip_address_version = var.ipset_address_version
  addresses          = var.ipset_addresses

  tags = var.ipset_tags
}
