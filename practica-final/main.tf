module "network" {
  source = "./network"
  tags = {
    owner = var.tags.owner
  }

  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  vpc_cidr    = lookup(var.vpc_cidr, terraform.workspace)
}

module "infra" {
  source   = "./infra"
  ami      = lookup(var.ami, terraform.workspace)
  instance = lookup(var.instance, terraform.workspace)
  tags = {
    owner = var.tags.owner
  }
  subnet_id = module.network.subnet_id
}
