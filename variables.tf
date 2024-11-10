variable "zone" {
  description = "Network zone"
  type = string
}

variable "router_name" {
  description = "Router name"
  type = string
}

variable "network_name" {
  description = "Private network name"
  type = string
}

variable "labels" {
  description = "Labels for the private network"
  type = map(string)
  default = {}
}

variable "network" {
  description = "Private network details"
  type = object({
    subnet                = string
    is_dhcp               = bool
    family                = string
    is_dhcp_default_route = optional(bool)
    gateway_address       = optional(string)  
  })
}