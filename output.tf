output "network_id" {
  description = "ID of private network"
  value = upcloud_network.main.id
}

output "network_type" {
  description = "Private network type"
  value = upcloud_network.main.type
}

output "network_name" {
  description = "Private network name"
  value = upcloud_network.main.name
}

output "network_zone" {
  description = "Private network zone"
  value = upcloud_network.main.zone
}

output "network" {
  description = "Details of the private network"
  value = upcloud_network.main.ip_network[0]
}

output "router_id" {
  description = "ID of private network router"
  value = upcloud_router.main.id
}

output "router_name" {
  description = "Private network router name"
  value = upcloud_router.main.name
}
