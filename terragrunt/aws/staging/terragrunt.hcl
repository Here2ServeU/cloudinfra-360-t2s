include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/networking/aws"
}

inputs = {
  region              = "us-east-2"
  environment         = "staging"
  vpc_name            = "cloudinfra-staging-vpc"
  cidr_block          = "10.11.0.0/16"
  public_subnets      = ["10.11.1.0/24", "10.11.2.0/24"]
  private_subnets     = ["10.11.10.0/24", "10.11.11.0/24"]
  enable_nat_gateway  = true
  enable_vpn_gateway  = true
  enable_vpc_flow_logs = true
}
