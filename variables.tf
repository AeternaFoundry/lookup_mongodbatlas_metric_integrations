variable "metric_integrations_lookup" {
  description = <<EOT
Map of metric_integrations_lookup, attributes below
Required:
    - project_id
Optional:
    - integration_type
    - provider_type
EOT

  type = map(object({
    project_id       = string
    integration_type = optional(string)
    provider_type    = optional(string)
  }))
}

