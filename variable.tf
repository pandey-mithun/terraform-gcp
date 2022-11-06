variable "stringvar" {
  type = string

}

variable "numbervar" {
  type = number
}

variable "listvar" {
  type = list(string)
}

variable "setvar" {
  type = set(string)
}

variable "mapvar" {
  type = map(string)
}

variable "mapvarany" {
  type = map(any)
}

variable "objectvar" {
  type = object({
    cidr_block = string
    region     = string
  })
}

variable "mapofobject" {
  type = map(object({
    cidr_block = string
    region     = string
  }))
}

variable "subnet" {
  type = map(object({
    cidr_block = string
    region     = string
  }))
}
