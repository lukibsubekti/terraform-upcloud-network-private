output "network_id" {
  description = "ID of private network"
  value = upcloud_network.example.id
}

output "network_type" {
  description = "Private network type"
  value = upcloud_network.example.type
}

output "network_name" {
  description = "Private network name"
  value = upcloud_network.example.name
}

output "network_zone" {
  description = "Private network zone"
  value = upcloud_network.example.zone
}

output "network" {
  description = "Private network IP network"
  value = upcloud_network.example.ip_network
}

output "router_id" {
  description = "ID of private network router"
  value = upcloud_router.example.id
}

output "router_name" {
  description = "Private network router name"
  value = upcloud_router.example.name
}
