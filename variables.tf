variable "zone" {
  description = "UpCloud network zone"
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
    subnet                = string # eg. "10.0.0.0/24"
    is_dhcp               = bool
    family                = string # eg. "IPv4"
    is_dhcp_default_route = optional(bool) # Is the gateway the DHCP default route?
    gateway_address       = optional(string) # eg. "10.0.0.1"  
  })
}