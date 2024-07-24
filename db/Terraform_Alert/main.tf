resource "newrelic_nrql_alert_condition" "dynamic" {
  for_each                       = { for idx, condition in var.alert_conditions : idx => condition }
  account_id                     = 4438277
  policy_id                      = each.value.policy_id
  name                           = each.value.name
  description                    = each.value.description
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30

  nrql {
    query = each.value.nrql_query
  }
  dynamic "critical" {
    for_each = each.value.has_critical ? [each.value] : []
    content {
      operator              = each.value.operator_critical
      threshold             = each.value.threshold_critical
      threshold_duration    = each.value.duration_critical
      threshold_occurrences = each.value.occurrences_critical
    }
  }
  dynamic "warning" {
    for_each = each.value.has_warning ? [each.value] : []
    content {
      operator              = each.value.operator_warning
      threshold             = each.value.threshold_warning
      threshold_duration    = each.value.threshold_duration
      threshold_occurrences = each.value.threshold_occurrences
    }

  }
}