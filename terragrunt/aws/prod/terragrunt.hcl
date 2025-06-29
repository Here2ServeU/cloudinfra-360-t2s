include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/networking/aws"
}

inputs = {
  region              = "us-west-2"
  environment         = "prod"
  vpc_name            = "cloudinfra-prod-vpc"
  cidr_block          = "10.12.0.0/16"
  public_subnets      = ["10.12.1.0/24", "10.12.2.0/24"]
  private_subnets     = ["10.12.10.0/24", "10.12.11.0/24"]
  enable_nat_gateway  = true
  enable_vpn_gateway  = true
  enable_vpc_flow_logs = true
}
