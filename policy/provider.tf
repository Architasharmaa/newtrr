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
  api_key    = var.apikey          # Your New Relic user key
}
