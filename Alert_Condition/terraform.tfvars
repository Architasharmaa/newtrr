alerts_var = {
  name                = "Archita_Alert"
  aggregation_method  = "eventflow"
  aggregation_window  = "60"
  expiration_duration = "120"
  aggregation_timer   = "60"

  critical = {
    operator_critical           = "above"
    threshold_critical          = 4.0
    threshold_duration_critical = 600
  threshold_occurrences_critical = "ALL" 
  }
  warning = {
    operator_warning              = "above"
    threshold_warning             = 3.5
    threshold_duration_warning    = 600
    threshold_occurrences_warning = "ALL"
  }
}


# operator_critical              = "above"
# threshold_critical             = 4.0
# threshold_duration_critical    = 600
# threshold_occurrences_critical = "ALL"

# operator_warning               = "above"
# threshold_warning              = 3.5
# threshold_duration_warning     = 600
# threshold_occurrences_warning  = "ALL"




