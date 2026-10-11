resource "okta_user_risk" "user_risks" {
  for_each = var.user_risks

  risk_level = each.value.risk_level
  user_id    = each.value.user_id
}

