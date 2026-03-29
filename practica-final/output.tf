output "public_ip" {
  value = module.infra.public_ip
}

output "instancia_id" {
  value = module.infra.instancia_id
}

output "tag_name" {
  value = module.infra.tag_name
}

output "availability_zone" {
  value = module.infra.availability_zone
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "tag_owner" {
  value = var.tags.owner
}
