resource "random_string" "clave" {
  length = 10
}

resource "local_sensitive_file" "password" {
  content  = "password: ${random_string.clave.id}"
  filename = "${path.module}/password.txt"
  directory_permission = "0600"
  file_permission = "0400"
}
