include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/networking/gcp"
}

inputs = {
  environment          = "dev"
  region               = "us-central1"
  project_id           = "cloudinfra-dev-project"
  network_name         = "cloudinfra-dev-vpc"
  public_subnet_name   = "public-subnet-dev"
  public_subnet_cidr   = "10.30.1.0/24"
  private_subnet_name  = "private-subnet-dev"
  private_subnet_cidr  = "10.30.10.0/24"
}
