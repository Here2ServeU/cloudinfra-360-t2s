# File: terragrunt/aws/dev/terragrunt.hcl
include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules//networking/aws"
}

inputs = {
  region            = "us-east-1"
  environment       = "dev"
  vpc_name          = "cloudinfra-dev-vpc"
  cidr_block        = "10.10.0.0/16"
  public_subnets    = ["10.10.1.0/24", "10.10.2.0/24"]
  private_subnets   = ["10.10.10.0/24", "10.10.11.0/24"]
  enable_nat_gateway = true
  enable_vpn_gateway = true
  enable_vpc_flow_logs = true
}
