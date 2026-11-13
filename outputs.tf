output "user_risks_id" {
  description = "Map of id values across all user_risks, keyed the same as var.user_risks"
  value       = { for k, v in okta_user_risk.user_risks : k => v.id }
}
output "user_risks_risk_level" {
  description = "Map of risk_level values across all user_risks, keyed the same as var.user_risks"
  value       = { for k, v in okta_user_risk.user_risks : k => v.risk_level }
}
output "user_risks_user_id" {
  description = "Map of user_id values across all user_risks, keyed the same as var.user_risks"
  value       = { for k, v in okta_user_risk.user_risks : k => v.user_id }
}

