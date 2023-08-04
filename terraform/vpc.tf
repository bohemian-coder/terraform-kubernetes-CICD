module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"

  name = "${local.project}-vpc"
  cidr = var.vpc_cidr

  azs            = var.vpc_azs
  public_subnets = var.vpc_public_subnets

  enable_nat_gateway = false
  map_public_ip_on_launch = true

  tags = local.common_tags
}

module "sgs" {
  source = "./sg_eks"
  vpc_id = module.vpc.vpc_id
}

module "eks" {
  source     = "./eks"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = [module.vpc.public_subnets[0] , module.vpc.public_subnets[1]]
  sg_ids     = module.sgs.security_group_public
}