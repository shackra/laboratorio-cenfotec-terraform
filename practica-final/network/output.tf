output "vpc" {
  value = aws_vpc.vpc.id
}

output "subnet" {
  value = aws_subnet.subnet.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "subnet_id" {
  value = aws_subnet.subnet.id
}

output "tag_owner" {
  value = aws_instance.instancia.tags_all.owner
}
