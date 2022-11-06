stringvar    = "MyFirstString"
boolVariable = true
listvar      = ["a", "b", "c", "d", "e", "f", ]
setvar       = ["1", "2", "3", "4", "5", "6", ]
mapvar = {
  key = "value"
}

mapvarany = {
  key1 = 100
  key2 = "str"
  key3 = false
}

objectvar = {
  cidr_block = "10.0.0.0/24"
  region     = "us-east-1"
}

mapofobject = {
  "subnet1" = {
    cidr_block = "10.0.0.0/24"
    region     = "us-east"
  }
  "subnet2" = {
    cidr_block = "10.0.0.1/24"
    region     = "us-east"
  }
}

subnet = {
  subnet1 = {
    cidr_block = "10.0.0.0/20"
    region     = "us-central1"
  }
  subnet2 = {
    cidr_block = "10.2.0.0/20"
    region     = "europe-west1"
  }
}
