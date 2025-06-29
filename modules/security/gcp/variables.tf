variable "firewall_name" {}
variable "vpc_name" {}
variable "firewall_protocol" {}
variable "firewall_ports" { type = list(string) }
variable "direction" {}
variable "source_ranges" { type = list(string) }
variable "kms_ring_name" {}
variable "kms_key_name" {}
variable "location" {}
variable "project_id" {}
variable "rotation_period" {}
variable "armor_policy_name" {}
