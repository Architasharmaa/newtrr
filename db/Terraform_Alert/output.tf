output "alert_condition_names" {
  value = [for condition in var.alert_conditions : condition.name]
}
