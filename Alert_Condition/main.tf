
resource "newrelic_alert_policy" "foo" {
  name = "foo"
}

resource "newrelic_nrql_alert_condition" "foo" {
  account_id                     = 4438277
  policy_id                      = newrelic_alert_policy.foo.id
  type                           = "static"
  name                           = "foo"
  description                    = "Alert when transactions are taking too long"
  runbook_url                    = "https://www.example.com"
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
    query = "SELECT average(duration) FROM Transaction where appName = 'Your App'"
  }

  critical {
    operator              = var.alerts_var.critical.operator_critical
    threshold             = var.alerts_var.critical.threshold_critical
    threshold_duration    = var.alerts_var.critical.threshold_duration_critical
    threshold_occurrences = var.alerts_var.critical.threshold_occurrences_critical
  }

  warning {
    operator              = var.alerts_var.warning.operator_warning
    threshold             = var.alerts_var.warning.threshold_warning
    threshold_duration    = var.alerts_var.warning.threshold_duration_warning
    threshold_occurrences = var.alerts_var.warning.threshold_occurrences_warning
  }
}