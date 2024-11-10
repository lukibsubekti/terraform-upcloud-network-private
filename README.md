# Terraform - UpCloud - Private Network


## About
A Terraform module for private network creation in UpCloud


## Requirements
- Terraform version `>= 1.6.0`
- UpCloud Provider version `>= 5.10.0`


## Inputs

### Required
- `zone`: *string*. UpCloud network zone code, eg. `"sg-sin1"`.
- `network_name`: *string*. Name of the private network.
- `router_name`: *string*. Name of the private network router.
- `network`: *object*. Details of the private network.
    - `subnet`: *string*. Network address, eg. `"10.0.0.0/24"`.
    - `is_dhcp`: *bool*. Enabling DHCP.
    - `family`: *string*. Network family, eg. `"IPv4"`.
    - `is_dhcp_default_route`: *optional(bool)*. Enabling the gateway as DHCP default route.
    - `gateway_address`: *optional(string)*. Gateway address, eg. `"10.0.0.1"`.

### Optional
- `labels`: *map*. A *key-value* pairs.


## Outputs
- `network_id`: ID of private network
- `network_type`: Private network type
- `network_name`: Private network name
- `network_zone`: Private network zone
- `network`: Private network IP network
- `router_id`: ID of private network router
- `router_name`: Private network router name

## Examples

Create a module

```hcl
provider "upcloud" {
  username = var.upcloud_username
  password = var.upcloud_password
}

module "private_network" {
  source = "app.terraform.io/luki/network-private/upcloud"

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