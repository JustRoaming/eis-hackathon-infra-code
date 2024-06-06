variable "resource_group_name" {
  description = "Name for the Resource Groups"
  type = string
}

variable "virtual_networks" {
  description = "Virtual Network details"
  type = map(list(string))
}
