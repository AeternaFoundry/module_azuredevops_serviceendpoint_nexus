output "serviceendpoint_nexus_id" {
  description = "Map of id values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.id }
}
output "serviceendpoint_nexus_authorization" {
  description = "Map of authorization values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.authorization }
}
output "serviceendpoint_nexus_description" {
  description = "Map of description values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.description }
}
output "serviceendpoint_nexus_password" {
  description = "Map of password values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.password }
  sensitive   = true
}
output "serviceendpoint_nexus_project_id" {
  description = "Map of project_id values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.project_id }
}
output "serviceendpoint_nexus_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.service_endpoint_name }
}
output "serviceendpoint_nexus_url" {
  description = "Map of url values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.url }
}
output "serviceendpoint_nexus_username" {
  description = "Map of username values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.username }
}

