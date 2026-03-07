resource "local_file" "archivo2" {
  filename   = "archivo2.txt"
  content    = "hola mundo"
  depends_on = [local_file.archivo1]
}

resource "local_file" "archivo1" {
  filename = "archivo1.txt"
  content  = "archivo 1"
}
