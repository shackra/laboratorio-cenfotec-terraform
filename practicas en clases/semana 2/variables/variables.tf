variable "nombre" {
  type = string
  default = "Jorge"
}

variable "num" {
  type = number
  default = 42
}

variable "persona" {
  type = map(any)
  default = {
    filename = "persona.txt"
    content = "Jorge Araya Navarro"
  }
}

variable "sexos" {
  type = list(string)
  default = ["masculino", "femenino", "indeterminado"]
}

variable "identificacion" {
  type = string
}

variable "discos" {
  type = map(any)
  description = "tipos de almacenamientos"
}
