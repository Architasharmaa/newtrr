variable "alert_conditions" {
  description = "List of alert conditions"
  type = list(object({
    name                 = string
    description          = string
    runbook_url          = string
    nrql_query           = string
    has_critical         = bool
    operator_critical    = string
    threshold_critical   = number
    duration_critical    = number
    occurrences_critical = string
    has_warning          = bool
    operator_warning     = string
    threshold_warning    = number
    duration_warning     = number
    occurrences_warning  = string
  }))
}
variable "apikey" {
  type = string
}