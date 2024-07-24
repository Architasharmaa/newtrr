terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.38.1"
    }
  }
}
provider "newrelic" {
  account_id = 4438277                         # Your New Relic account ID
  api_key    = var.apikey # Your New Relic user key
}
# #  Link the notification channel to the alert policy
# resource "newrelic_alert_policy_channel" "example_policy_channel" {
#   policy_id   = newrelic_alert_policy.example_policy.id
#   channel_ids = [newrelic_alert_channel.email_channel.id]
# }