data "mongodbatlas_metric_integrations" "metric_integrations_lookup" {
  for_each = var.metric_integrations_lookup

  project_id       = each.value.project_id
  integration_type = each.value.integration_type
  provider_type    = each.value.provider_type
}

