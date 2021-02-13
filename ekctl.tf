provider "aws" {
  region = "eu-west-1"
}

module "eks" {
  source = "./src/"

  name        = "basic"
  default_vpc = true
  

  enable_kubectl   = true
  enable_dashboard = false
  enable_kube2iam  = true
}

