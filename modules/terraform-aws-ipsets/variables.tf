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

