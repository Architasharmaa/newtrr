alert_conditions = [
  {
    name                 = " my first condition based on High CPU Usage"
    description          = "Alert when CPU usage is high"
    runbook_url          = "https://www.example.com"
    nrql_query           = "SELECT average(cpu) FROM SystemSample WHERE appName = 'YourApp'"
    has_critical         = true
    operator_critical    = "above"
    threshold_critical   = 90.0
    duration_critical    = 600
    occurrences_critical = "ALL"
    has_warning          = false
    operator_warning     = "above"
    threshold_warning    = 80.0
    duration_warning     = 600
    occurrences_warning  = "ALL"
  },
  {
    name                 = " my second condition on High Memory Usage"
    description          = "Alert when memory usage is high"
    runbook_url          = "https://www.example.com"
    nrql_query           = "SELECT average(memory) FROM SystemSample WHERE appName = 'YourApp'"
    has_critical         = true
    operator_critical    = "above"
    threshold_critical   = 90.0
    duration_critical    = 600
    occurrences_critical = "ALL"
    has_warning          = true
    operator_warning     = "above"
    threshold_warning    = 80.0
    duration_warning     = 600
    occurrences_warning  = "ALL"
  },
  {
    name                 = " my third condition on High Disk Usage"
    description          = "Alert when disk usage is high"
    runbook_url          = "https://www.example.com"
    nrql_query           = "SELECT average(disk) FROM SystemSample WHERE appName = 'YourApp'"
    has_critical         = false
    operator_critical    = "above"
    threshold_critical   = 90.0
    duration_critical    = 600
    occurrences_critical = "ALL"
    has_warning          = true
    operator_warning     = "above"
    threshold_warning    = 80.0
    duration_warning     = 600
    occurrences_warning  = "ALL"
  }
]
