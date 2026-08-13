output "lightsail_container_services_id" {
  description = "Map of id values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lightsail_container_services_arn" {
  description = "Map of arn values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lightsail_container_services_availability_zone" {
  description = "Map of availability_zone values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "lightsail_container_services_created_at" {
  description = "Map of created_at values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "lightsail_container_services_is_disabled" {
  description = "Map of is_disabled values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.is_disabled if v.is_disabled != null }
}
output "lightsail_container_services_name" {
  description = "Map of name values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lightsail_container_services_power" {
  description = "Map of power values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.power if v.power != null && length(v.power) > 0 }
}
output "lightsail_container_services_power_id" {
  description = "Map of power_id values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.power_id if v.power_id != null && length(v.power_id) > 0 }
}
output "lightsail_container_services_principal_arn" {
  description = "Map of principal_arn values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.principal_arn if v.principal_arn != null && length(v.principal_arn) > 0 }
}
output "lightsail_container_services_private_domain_name" {
  description = "Map of private_domain_name values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.private_domain_name if v.private_domain_name != null && length(v.private_domain_name) > 0 }
}
output "lightsail_container_services_private_registry_access" {
  description = "Map of private_registry_access values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.private_registry_access if v.private_registry_access != null && length(v.private_registry_access) > 0 }
}
output "lightsail_container_services_public_domain_names" {
  description = "Map of public_domain_names values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.public_domain_names if v.public_domain_names != null && length(v.public_domain_names) > 0 }
}
output "lightsail_container_services_region" {
  description = "Map of region values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lightsail_container_services_resource_type" {
  description = "Map of resource_type values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "lightsail_container_services_scale" {
  description = "Map of scale values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.scale if v.scale != null }
}
output "lightsail_container_services_state" {
  description = "Map of state values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.state if v.state != null && length(v.state) > 0 }
}
output "lightsail_container_services_tags" {
  description = "Map of tags values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lightsail_container_services_tags_all" {
  description = "Map of tags_all values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "lightsail_container_services_url" {
  description = "Map of url values across all lightsail_container_services, keyed the same as var.lightsail_container_services"
  value       = { for k, v in aws_lightsail_container_service.lightsail_container_services : k => v.url if v.url != null && length(v.url) > 0 }
}

