resource "local_file" "numero" {
  filename = var.nombre
  content = var.num
}

resource "local_file" "humano" {
  filename = var.persona["filename"]
  content = var.persona["content"]
}

resource "local_file" "sexo" {
  filename = "sexo.txt"
  content = var.sexos[0]
}

resource "local_file" "id" {
  filename = "id.txt"
  content = var.identificacion
}

resource "local_file" "almacenamiento" {
  filename = "storage.txt"
  content = var.discos["rapido"]
}
