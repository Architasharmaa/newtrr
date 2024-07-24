resource "newrelic_synthetics_monitor" "monitor" {
  status           = "ENABLED"
  name             = " terraform monitor"
  period           = "EVERY_DAY"
  uri              = "https://www.one.newrelic.com"
  type             = "SIMPLE"
  locations_public = ["AP_SOUTH_1"]

  custom_header {
    name  = "header"
    value = "of monitor"
  }

  treat_redirect_as_failure = var.treat_redirect_as_failure.treat_redirect_as_failure
  validation_string         = "success"
  bypass_head_request       = true
  verify_ssl                = true

  tag {
    key    = "this is simple browser"
    values = ["by terraform"]
  }
}