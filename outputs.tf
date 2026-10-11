output "user_risks_id" {
  description = "Map of id values across all user_risks, keyed the same as var.user_risks except keys with no id are omitted"
  value       = { for k, v in okta_user_risk.user_risks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_risks_risk_level" {
  description = "Map of risk_level values across all user_risks, keyed the same as var.user_risks except keys with no risk_level are omitted"
  value       = { for k, v in okta_user_risk.user_risks : k => v.risk_level if v.risk_level != null && length(v.risk_level) > 0 }
}
output "user_risks_user_id" {
  description = "Map of user_id values across all user_risks, keyed the same as var.user_risks except keys with no user_id are omitted"
  value       = { for k, v in okta_user_risk.user_risks : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

