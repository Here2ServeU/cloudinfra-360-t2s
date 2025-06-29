# File: modules/networking/aws/variables.tf
variable "region" {}
variable "environment" {}
variable "vpc_name" {}
variable "cidr_block" {}
variable "public_subnets" { type = list(string) }
variable "private_subnets" { type = list(string) }
variable "enable_nat_gateway" { default = false }
variable "enable_vpn_gateway" { default = false }
variable "enable_vpc_flow_logs" { default = false }
