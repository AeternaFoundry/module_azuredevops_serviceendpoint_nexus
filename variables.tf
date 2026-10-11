variable "serviceendpoint_nexus" {
  description = <<EOT
Map of serviceendpoint_nexus, attributes below
Required:
    - password
    - project_id
    - service_endpoint_name
    - url
    - username
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    password              = string
    project_id            = string
    service_endpoint_name = string
    url                   = string
    username              = string
    description           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_nexus : (
        !endswith(v.url, "/")
      )
    ])
    error_message = "[from validate.Url: must not end with \"/\"]"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

