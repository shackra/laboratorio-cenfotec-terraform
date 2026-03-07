resource "local_file" "key_file" {
  content = tls_private_key.privatekey.private_key_pem
  filename = "key.pem"
}

resource "tls_private_key" "privatekey" {
  algorithm = "RSA"
  rsa_bits = 4096
}
