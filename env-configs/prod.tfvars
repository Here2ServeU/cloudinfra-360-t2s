region            = "us-west-2"
environment       = "prod"
vpc_name          = "cloudinfra-prod-vpc"
cidr_block        = "10.30.0.0/16"
public_subnets    = ["10.30.1.0/24", "10.30.2.0/24"]
private_subnets   = ["10.30.10.0/24", "10.30.11.0/24"]
enable_nat_gateway = true
enable_vpn_gateway = true
enable_vpc_flow_logs = true
