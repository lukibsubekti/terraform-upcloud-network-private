
resource "upcloud_router" "main" {
  name = var.router_name
}

resource "upcloud_network" "main" {
  name = var.network_name # required
  zone = var.zone # required
  router = upcloud_router.main.id
  labels = var.labels

  ip_network { # required
    address            = var.network.subnet # required
    dhcp               = var.network.is_dhcp # required
    family             = var.network.family # required
    dhcp_default_route = var.network.is_dhcp_default_route
    gateway            = var.network.gateway_address
  }
}