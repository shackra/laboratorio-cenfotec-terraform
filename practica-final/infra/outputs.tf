output "public_ip" {
  value = aws_instance.instancia.public_ip
}

output "instancia_id" {
  value = aws_instance.instancia.id
}

output "tag_name" {
  value = aws_instance.instancia.tags_all.Name
}

output "availability_zone" {
  value = aws_instance.instancia.availability_zone
}
