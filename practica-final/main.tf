module "network" {
  source = "./network"
  tags = {
    owner = var.tags.owner
  }

  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  vpc_cidr    = lookup(var.vpc_cidr, terraform.workspace)
}

module "infra" {
  source = "./infra"
  ami = vars.ami
  instance = var.instance
  tags = {
    owner = var.tags.owner
  }
  subnet_id = aws_
}
