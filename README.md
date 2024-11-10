# Terraform - UpCloud - Private Network


## About
A Terraform module for private network creation in UpCloud


## Requirements
- Terraform version `>= 1.6.0`
- UpCloud Provider version `>= 5.10.0`


## Examples

Create a module

```hcl
provider "upcloud" {
  username = var.upcloud_username
  password = var.upcloud_password
}

module "private_network" {
  source  = "lukibsubekti/network-private/upcloud"
  version = "1.0.1"

  router_name = "example-router"
  network_name = "example-network"
  zone = "sg-sin1"
  network = {
    subnet = "10.0.0.0/24"
    is_dhcp = true
    family = "IPv4"
    is_dhcp_default_route = false
    gateway_address = "10.0.0.1"
  }
}
```