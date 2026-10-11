output "metric_integrations_lookup_integration_type" {
  description = "Map of integration_type values across all metric_integrations_lookup, keyed the same as var.metric_integrations_lookup except keys with no integration_type are omitted"
  value       = { for k, v in data.mongodbatlas_metric_integrations.metric_integrations_lookup : k => v.integration_type if v.integration_type != null && length(v.integration_type) > 0 }
}
output "metric_integrations_lookup_project_id" {
  description = "Map of project_id values across all metric_integrations_lookup, keyed the same as var.metric_integrations_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_metric_integrations.metric_integrations_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "metric_integrations_lookup_provider_type" {
  description = "Map of provider_type values across all metric_integrations_lookup, keyed the same as var.metric_integrations_lookup except keys with no provider_type are omitted"
  value       = { for k, v in data.mongodbatlas_metric_integrations.metric_integrations_lookup : k => v.provider_type if v.provider_type != null && length(v.provider_type) > 0 }
}
output "metric_integrations_lookup_results" {
  description = "Map of results values across all metric_integrations_lookup, keyed the same as var.metric_integrations_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_metric_integrations.metric_integrations_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

