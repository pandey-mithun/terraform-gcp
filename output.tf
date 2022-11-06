output "outputstring" {
  value = var.stringvar
}

output "outputnum" {
  value = var.numbervar
}

output "outputbool" {
  value = var.boolVariable
}

output "list" {
  value = var.listvar
}

output "listitem" {
  value = var.listvar[1]
}

/*
output "setitem" {
  value = var.setvar[1] // this will give error Elements of a set are identified only by their value 
                        //and don't have any separate index or key to select with, 
                        //so it's only possible to perform operations across all elements of the set.
╵
*/

output "set" {
  value = var.setvar
}

output "map" {
  value = var.mapvar
}

output "mapany" {
  value = var.mapvarany
}

output "op-object" {
  value = var.objectvar
}

output "map-object" {
  value = var.mapofobject

}

output "localVar" {
  value = local.a
}

output "op_id" {
  value = google_compute_network.vpc_network.id
}

output "op_self_link" {

  value = google_compute_network.vpc_network.self_link
}
