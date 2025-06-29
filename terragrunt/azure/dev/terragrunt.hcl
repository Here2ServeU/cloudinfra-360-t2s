include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/networking/azure"
}

inputs = {
  environment           = "dev"
  location              = "East US"
  resource_group        = "rg-cloudinfra-dev"
  vnet_name             = "cloudinfra-dev-vnet"
  address_space         = ["10.20.0.0/16"]
  public_subnet_name    = "public-subnet-dev"
  public_subnet_prefix  = "10.20.1.0/24"
  private_subnet_name   = "private-subnet-dev"
  private_subnet_prefix = "10.20.10.0/24"
}
