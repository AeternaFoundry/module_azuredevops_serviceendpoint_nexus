output "serviceendpoint_nexus_id" {
  description = "Map of id values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_nexus_authorization" {
  description = "Map of authorization values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_nexus_description" {
  description = "Map of description values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_nexus_password" {
  description = "Map of password values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus except keys with no password are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "serviceendpoint_nexus_project_id" {
  description = "Map of project_id values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_nexus_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}
output "serviceendpoint_nexus_url" {
  description = "Map of url values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus except keys with no url are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.url if v.url != null && length(v.url) > 0 }
}
output "serviceendpoint_nexus_username" {
  description = "Map of username values across all serviceendpoint_nexus, keyed the same as var.serviceendpoint_nexus except keys with no username are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nexus.serviceendpoint_nexus : k => v.username if v.username != null && length(v.username) > 0 }
}

