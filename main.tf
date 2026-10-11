resource "azuredevops_serviceendpoint_nexus" "serviceendpoint_nexus" {
  for_each = var.serviceendpoint_nexus

  password              = each.value.password
  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  url                   = each.value.url
  username              = each.value.username
  description           = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

